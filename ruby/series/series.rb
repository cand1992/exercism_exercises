=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  attr_accessor :series

  def initialize(series)
    @series = series
  end

  def slices(num)
    arr = series.split(//)
    arr2 = []
    if num == 1
      arr
    elsif num > arr.count
      raise ArgumentError
    else
      arr.map.with_index do |a, i|
        if arr[i..i+num-1].count == num
          arr2 << arr[i..i+num-1].join
        elsif arr[i..i+num-1].count == 1
          break arr2
        end
      end
    end
  end
end