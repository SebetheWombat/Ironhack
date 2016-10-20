require("ruby-dictionary")
require_relative("lib/wordchain.rb")

my_chain = WordChain.new(Dictionary.from_file('/usr/share/dict/words'))
my_chain.find_chain("cat", "dog")
puts ""
my_chain.find_chain("ruby", "code")
puts ""
 my_chain.find_chain("bang", "farm")


