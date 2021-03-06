require_relative("lib/string_calculator.rb")

the_calculator = Calculator.new

p the_calculator.add("7,7") == 14
p the_calculator.add("8,4") == 12

p the_calculator.add("6") == 6
p the_calculator.add("3") == 3

p the_calculator.add("") == 0

# BONUS:
p the_calculator.add == 0

# BONUS:
p the_calculator.add("7$7") == 14
p the_calculator.add("8$4") == 12

p the_calculator.add("8$4") == 12

p the_calculator.add("7,7,1,2") == 17
p the_calculator.add("7$7$1$2") == 17

p the_calculator.add("7$7,1,2") == 17

p the_calculator.subtract("10,5") == 5