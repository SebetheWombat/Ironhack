require_relative("lib/caffeine_consumer")
require_relative("lib/payable.rb")
require_relative("lib/designer.rb")
require_relative("lib/programmer.rb")

amy = Programmer.new
brian = Designer.new

amy.program
brian.design