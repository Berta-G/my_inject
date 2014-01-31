require_relative '../lib/my_inject'

describe "my_inject" do

	it "retruns nil if called on an empty array" do
		expect([].my_inject).to eq(nil)
	end

	it "returns the element of if called on an array of 1" do
		expect([2].my_inject{|t, n| t + n}).to eq(2)
	end

	it "can return the sum of all the elements on the array" do
		expect([1,2,3].my_inject{|t, n| t + n}).to eq(6)
	end



end