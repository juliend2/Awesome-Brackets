$:.unshift "."
require 'parser.rb'

code = <<-EOS
class Awesome {
  def initialize(name) {
    pass
  }

  def x {
    2
  }
}

if true {
  aw = Awesome.new("brilliant!")
} else {
  weird
  pass
}

if true {
  aw = Awesome.new("brilliant!")
} 
else {
  pass
}

while true {
  print("infinite loop!")
}

while true { print("single line") }

EOS

p Parser.new.parse(code)
