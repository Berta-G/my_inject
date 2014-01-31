class Array 

	def my_inject(total=nil, &block)
		total ||= self.shift
		return total if self.empty?
		total = yield(total, self.shift)
		self.my_inject(total, &block)
	end

end