=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo

	POOP = [ "black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white" ]

	def self.value(colors)
		colorcode = []
		if colors.count > 2
			colors.pop
		end
		while colors.count > 0
			POOP.map.with_index {|color, index| 
				if color == colors.first
					colors.shift
					colorcode << index
				end
			}
		end	
		colorcode.join.to_i
		# puts colorcode.join
		# puts colorcode.reverse!.join
	end

end

# ResistorColorDuo.value(["black", "blue", "yellow"])