class Array 

	def my_inject(total=nil, &block)
		total ||= self.shift
		return total if self.empty?
	end

end