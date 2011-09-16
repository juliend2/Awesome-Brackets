class Lexer
  KEYWORDS = %w[def class if else while true false nil]

  def tokenize(code)
    code.chomp!

    i = 0

    tokens = []

    current_indent = 0

    indent_stack = []

    while i < code.size
      chunk = code[i..-1]

      if identifier = chunk[/\A([a-z]\w*)/, 1]
        if KEYWORDS.include? identifier
          tokens << [identifier.upcase.to_sym, identifier]
        else
          tokens << [:IDENTIFIER, identifier]
        end

        i += identifier.size

      elsif constant = chunk[/\A([A-Z]\w*)/, 1]
        tokens << [:CONSTANT, constant]
        i += constant.size

      elsif number = chunk[/\A([0-9]+)/, 1]
        tokens << [:NUMBER, number.to_i]
        i += number.size

      elsif string = chunk[/\A"(.*?)"/, 1]
        tokens << [:STRING, string]
        i += string.size + 2

      # Indentation magic!
      # 
      # We have to take care of 3 cases:
      # if true:    # 1) block is created
      #   line 1                         
      #   line 2    # 2) new line inside a block
      # continue    # 3) dedent             
      # 
      # this elsif takes care of the first case, the number of spaces will
      # determine the indent level
      elsif indent = chunk[/\A\:\n( +)/m, 1]
        if indent.size <= current_indent
          raise "Bad indent level, got #{indent.size} indents, expected > #{current_indent}"
        end
        current_indent = indent.size
        indent_stack.push current_indent
        tokens << [:INDENT, indent.size]
        i += indent.size + 2

      # This elsif takes care of the two last cases:
      # Case 2: we stay in the same block if the indent level (number of spaces) is the same as current_indent
      # Case 3: Close the current block, if indent level is lower than current_indent.
      elsif indent = chunk[/\A\n( *)/m, 1] # Matches "<newline> <space>"
        if indent.size == current_indent   # Case 2
          tokens << [:NEWLINE, "\n"]
        elsif indent.size < current_indent # Case 3
          indent_stack.pop
          current_indent = indent_stack.first || 0
          tokens << [:DEDENT, indent.size]
          tokens << [:NEWLINE, "\n"]
        else
          raise "Missing ':'"
        end
        i += 1

      # Ignore whitespace
      elsif chunk.match(/\A /)
        i += 1

      else
        value = chunk[0, 1]
        tokens << [value, value]
        i += 1

      end
    end

    while indent = indent_stack.pop
      tokens << [:DEDENT, indent_stack.first || 0]
    end

    tokens
  end
end


