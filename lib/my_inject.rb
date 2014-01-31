class Array 

	def my_inject(total=nil, &block)
		total ||= self.shift
		return total if self.empty?
		self.my_inject(yield(total, self.shift), &block)
	end

end