require_relative '../lib/my_inject'

describe "my_inject" do

	it "retruns nil if called on an empty array" do
		expect([].my_inject).to eq(nil)
	end

	

end