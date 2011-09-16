#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.6
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require "lexer"
  require "nodes"

class Parser < Racc::Parser

module_eval(<<'...end grammar.y/module_eval...', 'grammar.y', 152)
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.tokenize(code)
    puts @tokens.inspect if show_tokens
    do_parse
  end
  
  def next_token
    @tokens.shift
  end
...end grammar.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    31,    31,    31,    44,    34,    25,    47,    35,    35,    24,
    30,    30,    30,    34,    34,    35,    35,    57,    65,     5,
     8,    52,    13,    15,    53,    17,    19,    21,     1,     3,
     6,     9,     5,     8,    34,    13,    15,    54,    17,    19,
    21,     1,     3,     6,     9,     5,     8,    34,    13,    15,
    56,    17,    19,    21,     1,     3,     6,     9,     5,     8,
    42,    13,    15,    34,    17,    19,    21,     1,     3,     6,
     9,     5,     8,    33,    13,    15,    35,    17,    19,    21,
     1,     3,     6,     9,     5,     8,    61,    13,    15,    29,
    17,    19,    21,     1,     3,     6,     9,     5,     8,    28,
    13,    15,    27,    17,    19,    21,     1,     3,     6,     9,
     5,     8,    34,    13,    15,    35,    17,    19,    21,     1,
     3,     6,     9,     5,     8,    35,    13,    15,    68,    17,
    19,    21,     1,     3,     6,     9,     5,     8,    34,    13,
    15,   nil,    17,    19,    21,     1,     3,     6,     9,     5,
     8,   nil,    13,    15,    49,    17,    19,    21,     1,     3,
     6,     9,    50,    62,    51,    63,    69,   nil,    51 ]

racc_action_check = [
    48,    58,    14,    29,    26,     6,    34,    26,    29,     6,
    48,    58,    14,    23,    39,    33,    23,    48,    58,     0,
     0,    40,     0,     0,    40,     0,     0,     0,     0,     0,
     0,     0,     8,     8,    41,     8,     8,    44,     8,     8,
     8,     8,     8,     8,     8,     5,     5,    45,     5,     5,
    47,     5,     5,     5,     5,     5,     5,     5,    56,    56,
    28,    56,    56,    16,    56,    56,    56,    56,    56,    56,
    56,    32,    32,    15,    32,    32,    52,    32,    32,    32,
    32,    32,    32,    32,    27,    27,    53,    27,    27,    13,
    27,    27,    27,    27,    27,    27,    27,    51,    51,    12,
    51,    51,     9,    51,    51,    51,    51,    51,    51,    51,
    49,    49,    59,    49,    49,    61,    49,    49,    49,    49,
    49,    49,    49,    25,    25,    62,    25,    25,    63,    25,
    25,    25,    25,    25,    25,    25,    24,    24,    37,    24,
    24,   nil,    24,    24,    24,    24,    24,    24,    24,    35,
    35,   nil,    35,    35,    35,    35,    35,    35,    35,    35,
    35,    35,    38,    55,    38,    55,    64,   nil,    64 ]

racc_action_pointer = [
    17,   nil,   nil,   nil,   nil,    43,   -13,   nil,    30,    80,
   nil,   nil,    99,    76,    -5,    59,    43,   nil,   nil,   nil,
   nil,   nil,   nil,    -7,   134,   121,   -16,    82,    60,   -15,
   nil,   nil,    69,    -8,    -7,   147,   nil,   118,   143,    -6,
    17,    14,   nil,   nil,    24,    27,   nil,    32,    -7,   108,
   nil,    95,    53,    82,   nil,   144,    56,   nil,    -6,    92,
   nil,    92,   102,   115,   147,   nil,   nil,   nil,   nil,   nil ]

racc_action_default = [
    -1,   -19,    -9,   -20,   -10,   -43,   -21,   -11,   -43,   -28,
   -12,   -13,   -43,   -43,    -2,   -43,    -3,   -16,    -6,   -17,
    -7,   -18,    -8,   -43,   -43,   -25,   -43,   -43,   -43,   -43,
   -15,   -14,    -5,   -43,   -43,   -43,   -37,   -29,   -43,   -26,
   -38,   -30,    70,   -31,   -33,    -4,   -36,   -23,   -43,   -43,
   -22,   -43,   -43,   -43,   -34,   -43,   -25,   -41,   -43,   -27,
   -40,   -43,   -43,   -43,   -43,   -42,   -39,   -32,   -35,   -24 ]

racc_goto_table = [
    23,    14,    36,    26,    38,    40,    12,    55,    43,   nil,
   nil,   nil,    46,   nil,   nil,   nil,   nil,   nil,   nil,    37,
    39,   nil,    41,   nil,   nil,   nil,   nil,    45,   nil,   nil,
   nil,    60,   nil,   nil,   nil,    64,    48,   nil,   nil,   nil,
    66,    67,   nil,   nil,   nil,   nil,    59,   nil,   nil,   nil,
    58,    39 ]

racc_goto_check = [
     3,     2,    14,     3,    13,    14,     1,    15,    14,   nil,
   nil,   nil,    14,   nil,   nil,   nil,   nil,   nil,   nil,     3,
     3,   nil,     3,   nil,   nil,   nil,   nil,     3,   nil,   nil,
   nil,    14,   nil,   nil,   nil,    13,     2,   nil,   nil,   nil,
    14,    14,   nil,   nil,   nil,   nil,     3,   nil,   nil,   nil,
     2,     3 ]

racc_goto_pointer = [
   nil,     6,     1,    -5,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   -21,   -21,   -37 ]

racc_goto_default = [
   nil,   nil,   nil,    16,    32,    18,    20,    22,     2,     4,
     7,    10,    11,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 26, :_reduce_1,
  1, 26, :_reduce_2,
  1, 27, :_reduce_3,
  3, 27, :_reduce_4,
  2, 27, :_reduce_5,
  1, 28, :_reduce_none,
  1, 28, :_reduce_none,
  1, 28, :_reduce_none,
  1, 28, :_reduce_none,
  1, 28, :_reduce_none,
  1, 28, :_reduce_none,
  1, 28, :_reduce_none,
  1, 28, :_reduce_none,
  1, 29, :_reduce_none,
  1, 29, :_reduce_none,
  1, 30, :_reduce_16,
  1, 30, :_reduce_17,
  1, 30, :_reduce_18,
  1, 30, :_reduce_19,
  1, 30, :_reduce_20,
  1, 31, :_reduce_21,
  4, 31, :_reduce_22,
  3, 31, :_reduce_23,
  6, 31, :_reduce_24,
  0, 38, :_reduce_25,
  1, 38, :_reduce_26,
  3, 38, :_reduce_27,
  1, 32, :_reduce_28,
  3, 33, :_reduce_29,
  3, 33, :_reduce_30,
  3, 34, :_reduce_31,
  6, 34, :_reduce_32,
  0, 40, :_reduce_33,
  1, 40, :_reduce_34,
  3, 40, :_reduce_35,
  3, 35, :_reduce_36,
  3, 36, :_reduce_37,
  3, 37, :_reduce_38,
  6, 37, :_reduce_39,
  5, 37, :_reduce_40,
  3, 39, :_reduce_41,
  4, 39, :_reduce_42 ]

racc_reduce_n = 43

racc_shift_n = 70

racc_token_table = {
  false => 0,
  :error => 1,
  :WHILE => 2,
  :IF => 3,
  :ELSE => 4,
  :DEF => 5,
  :CLASS => 6,
  :NEWLINE => 7,
  :NUMBER => 8,
  :STRING => 9,
  :TRUE => 10,
  :FALSE => 11,
  :NIL => 12,
  :IDENTIFIER => 13,
  :CONSTANT => 14,
  :INDENT => 15,
  :DEDENT => 16,
  ";" => 17,
  "(" => 18,
  ")" => 19,
  "." => 20,
  "," => 21,
  "=" => 22,
  "{" => 23,
  "}" => 24 }

racc_nt_base = 25

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "WHILE",
  "IF",
  "ELSE",
  "DEF",
  "CLASS",
  "NEWLINE",
  "NUMBER",
  "STRING",
  "TRUE",
  "FALSE",
  "NIL",
  "IDENTIFIER",
  "CONSTANT",
  "INDENT",
  "DEDENT",
  "\";\"",
  "\"(\"",
  "\")\"",
  "\".\"",
  "\",\"",
  "\"=\"",
  "\"{\"",
  "\"}\"",
  "$start",
  "Root",
  "Expressions",
  "Expression",
  "Terminator",
  "Literal",
  "Call",
  "Constant",
  "Assign",
  "Def",
  "Class",
  "While",
  "If",
  "ArgList",
  "Block",
  "ParamList" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y', 32)
  def _reduce_1(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 33)
  def _reduce_2(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 38)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 39)
  def _reduce_4(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 41)
  def _reduce_5(val, _values, result)
     result = Nodes.new([val[0]]) 
    result
  end
.,.,

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

module_eval(<<'.,.,', 'grammar.y', 64)
  def _reduce_16(val, _values, result)
     result = LiteralNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 65)
  def _reduce_17(val, _values, result)
     result = LiteralNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 66)
  def _reduce_18(val, _values, result)
     result = LiteralNode.new(true) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 67)
  def _reduce_19(val, _values, result)
     result = LiteralNode.new(false) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 68)
  def _reduce_20(val, _values, result)
     result = LiteralNode.new(nil) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 74)
  def _reduce_21(val, _values, result)
     result = CallNode.new(nil, val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 76)
  def _reduce_22(val, _values, result)
     result = CallNode.new(nil, val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 78)
  def _reduce_23(val, _values, result)
     result = CallNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 81)
  def _reduce_24(val, _values, result)
     result = CallNode.new(val[0], val[2], val[4]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 85)
  def _reduce_25(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 86)
  def _reduce_26(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 87)
  def _reduce_27(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 91)
  def _reduce_28(val, _values, result)
     result = GetConstantNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 96)
  def _reduce_29(val, _values, result)
     result = SetLocalNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 97)
  def _reduce_30(val, _values, result)
     result = SetConstantNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 102)
  def _reduce_31(val, _values, result)
     result = DefNode.new(val[1], [], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 104)
  def _reduce_32(val, _values, result)
     result = DefNode.new(val[1], val[3], val[5]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 108)
  def _reduce_33(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 109)
  def _reduce_34(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 110)
  def _reduce_35(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 115)
  def _reduce_36(val, _values, result)
     result = ClassNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 120)
  def _reduce_37(val, _values, result)
     result = WhileNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 125)
  def _reduce_38(val, _values, result)
     result = IfNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 127)
  def _reduce_39(val, _values, result)
     result = IfNode.new(val[1], val[2], val[5]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 129)
  def _reduce_40(val, _values, result)
     result = IfNode.new(val[1], val[2], val[4]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 139)
  def _reduce_41(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 142)
  def _reduce_42(val, _values, result)
     result = val[2] 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
