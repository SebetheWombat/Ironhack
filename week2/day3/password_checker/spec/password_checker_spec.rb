require_relative("../lib/password_checker.rb")

RSpec.describe PasswordChecker do
	describe "#check_password" do
		checker = PasswordChecker.new()
		it "returns true for valid passwords" do
			pw = "aB12#9$iUp"
			expect(checker.check_password("sebe@example.com",pw)).to eq(true)

		end

		it "returns false for passwords shorter than 8 characters" do
			#"aB7*", ""
			expect(checker.check_password("sebe@example.com","aB7*")).to eq(false)
			expect(checker.check_password("sebe@example.com","")).to eq(false)
		end
		it "returns false for passwords without letters" do
			#"5876*%62#4", "388&$920"
			expect(checker.check_password("sebe@example.com","5876*%62#4")).to eq(false)
			expect(checker.check_password("sebe@example.com","388&$920")).to eq(false)
		end
		it "returns false for passwords without numbers" do
			#"aBphg*%cz#f"
			expect(checker.check_password("sebe@example.com", "aBphg*%cz#f")).to eq(false)
		end
		it "returns false for passwords without symbols" do
			#"aB76vkcz3", "uP869026"
			expect(checker.check_password("sebe@example.com", "aB76vkcz3")).to eq(false)
			expect(checker.check_password("sebe@example.com", "uP869026")).to eq(false)
		end

		it "returns false for passwords without lowercase letters" do
			#"AB76*%CZ#3", "UP8&$020"
			expect(checker.check_password("sebe@example.com", "AB76*%CZSS3")).to eq(false)
			expect(checker.check_password("sebe@example.com", "UP8&$020")).to eq(false)
		end
		it "returns false for passwords without uppercase letters" do
			#"ab76*%cz$3", "up8&$020"
			expect(checker.check_password("sebe@example.com", "ab76*%cz$3")).to eq(false)
			expect(checker.check_password("sebe@example.com", "up8&$020")).to eq(false)
		end

	end
end