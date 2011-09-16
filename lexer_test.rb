$:.unshift "."
require 'lexer'

code = <<-EOS
if 1 {
  print "..."
  if false {
    pass
  }
  print "done!"
}
print "The End"
EOS

p Lexer.new.tokenize(code)
