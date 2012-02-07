require '../roman'

describe Roman do
	it "should return V for 5" do
		roman = Roman.new
		roman.convert_to_roman(5).should == "V"
	end

	it "should return XI for 11" do
		roman = Roman.new
		roman.convert_to_roman(11).should == "XI"
	end

	it "should return MCX for 1110" do
		roman = Roman.new
		roman.convert_to_roman(1110).should == "MCX"
	end

	it "should return I for 1" do
		roman = Roman.new
		roman.convert_to_roman(1).should == "I"
	end

end