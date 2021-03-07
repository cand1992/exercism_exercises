=begin
Write your code for the 'Two Fer' exercise in this file. Make the tests in
`two_fer_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/two-fer` directory.
=end

class TwoFer
	def self.two_fer(name = nil)
		if name == nil
			name = "you"
			"One for you, one for me."
		elsif name == "Alice"
			"One for #{name}, one for me."
		elsif name == "Bob"
			"One for #{name}, one for me."
		end
	end
end