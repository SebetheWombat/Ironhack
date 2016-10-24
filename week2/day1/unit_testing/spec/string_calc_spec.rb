require_relative("../lib/string_calculator.rb")
RSpec.describe Calculator do
	describe "#add" do
		calc = Calculator.new
		it "adds two numbers separated by commas" do
			expect(calc.add("7,7")).to eq(14)
			expect(calc.add("8,4")).to eq(12)
		end

		it "returns the single number when only 1 is given" do
			expect(calc.add("6")).to eq(6)
			expect(calc.add("3")).to eq(3)
		end

		it "returns 0 when an empty string is given" do
			expect(calc.add("")).to eq(0)
		end

		it "returns 0 when no arguments are given" do
			expect(calc.add()).to eq(0)
		end

		it "adds all numbers in string separated by commas" do
			expect(calc.add("7,7,1,2")).to eq(17)
		end

		it "adds all numbers in string separated by $" do
			expect(calc.add("7$7$1$2")).to eq(17)
		end

		it "adds numbers on new lines" do
			expect(calc.add("7
				7")).to eq(14)
		end
	end
end