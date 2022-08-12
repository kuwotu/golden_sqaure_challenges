require "make_snippet"

RSpec.describe "make snippet method" do

    it "returns the given string in a shorter five word version" do
        result  = make_snippet("I love London")
        expect(result).to eq "I love London"
    end

    it "returns the given string in a shorter five word version" do
        result  = make_snippet("This course has been very interesting, I've learned so much.")
        expect(result).to eq "This course has been very..."
    end
  
    it "returns the given string in a shorter five word version" do
        result  = make_snippet("1,2,3,4,5,6,7,8,9")
        expect(result).to eq "1,2,3,4,5,6,7,8,9"
    end

    context "when the argument given is not a string" do
        it "fails" do 
            expect{make_snippet(1234567)}.to raise_error "Error: this is not a string, so it can't be shorterned"
        end
    end

end