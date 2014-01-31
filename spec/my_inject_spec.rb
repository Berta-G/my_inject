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

	it "can work with array of strings" do 
		expect(["a", "b", "c"].my_inject {|t, e| t << e} ). to eq("abc")
	end

context "total is initialized" do 
	it "can initialize the value if the argument is passed" do
		expect([1,2,3].my_inject(10) {|t, n| t + n }).to eq(16)
	end

	it "can return an array if initialized to empty array" do
		expect([1,2,3,4,5].my_inject([]) {|t, n| t << n*2 }).to eq([2,4,6,8,10])
	end
end




end