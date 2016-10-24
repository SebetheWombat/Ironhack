require_relative("../lib/fizz_buzzer.rb")

RSpec.describe "Fizz Buzz Class" do
	let :fzbz do
		FizzBuzz.new
	end
	it "Returns number if not divisible by 3 or 5" do
		expect(fzbz.fizzbuzz(1)).to eq("1")
		expect(fzbz.fizzbuzz(4)).to eq("4")
		expect(fzbz.fizzbuzz(11)).to eq("11")
	end
	it "Returns Fizz if number is divisible by 3" do
		expect(fzbz.fizzbuzz(3)).to eq("Fizz")
		expect(fzbz.fizzbuzz(9)).to eq("Fizz")
		expect(fzbz.fizzbuzz(12)).to eq("Fizz")
	end
	it "Returns Buzz if number is divisible by 5" do
		expect(fzbz.fizzbuzz(5)).to eq("Buzz")
		expect(fzbz.fizzbuzz(10)).to eq("Buzz")
		expect(fzbz.fizzbuzz(25)).to eq("Buzz")

	end
	it "Returns FizzBuzz if number is divisible by both 3 and 5" do
		expect(fzbz.fizzbuzz(15)).to eq("FizzBuzz")
		expect(fzbz.fizzbuzz(30)).to eq("FizzBuzz")

	end
end