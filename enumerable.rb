#!/usr/bin/ruby
module Enumerable
  def my_each
    self.length.times do |index|
      yield(self[index])
    end
  end

  def my_each_with_index
    self.length.times do |index|
      yield(self[index], index)
    end
  end

  def my_select
    result = []
    self.my_each do |element|
      result << element if yield(element) == true
    end
  end

	def my_all?
		all = true
		self.my_each do |element|
			if yield(element) == false
				return all = false
			end
		end
		all
	end

	def my_none?
		none = true
		self.my_each do |element|
			if yield(element) == true
				return none = false
			end
		end
		none
	end
	
	def my_count
		count = 0
		self.my_each do |element|
			count += 1 if yield(element)
		end
		count
	end

end


test = [1,2,3,4]
test.my_each { |n| puts n * 2 }
puts(test.my_all? do |element| element < 5 end)
puts(test.my_all? do |element| element < 2 end)
ary = [2,3,4,3,2,5,3]
puts(ary.count { |x| x % 2 == 0 })






