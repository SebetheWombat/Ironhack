require "sinatra"
require_relative("lib/calculator.rb")

get "/" do
	erb(:home)
end

actions = [
	{
		:action => "calculate_add",
		:sym => "+",
	},
	{
		:action => "subtract",
		:sym => "-"
	},
	{
		:action => "div",
		:sym => "/"
	},
	{
		:action => "mult",
		:sym => "*"
	}
]

post "/:action" do
	what_math = actions.find do |operator|
		operator[:action] == params[:action]
	end

	first = params[:first_number].to_f
	second = params[:second_number].to_f
	sym = what_math[:sym]
	calc = Calculator.new()
	result = case sym
	when "+"
		calc.add(first,second)
	when "-"
		calc.subtract(first,second)
	when "/"
		calc.div(first,second)
	when "*"
		calc.multi(first,second)
	end
	
	"#{first} #{sym} #{second} = #{result}"

end
