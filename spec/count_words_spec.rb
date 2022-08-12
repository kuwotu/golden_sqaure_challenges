# A method called count_words that takes a string as an argument and returns the number of words in that string.

require "count_words"

RSpec.describe "Count words" do
    it "takes a string as an argument and returns the number of words in that string" do
        result = count_words("I like to move it move it")
        expect(result).to eq 7
    end

    context "when the argument given is not a string" do
        it "fails" do
            expect{count_words(345)}.to raise_error "The argument given is not a string, so I can't count it."
        end

        it "fails" do
            expect{count_words(true)}.to raise_error "The argument given is not a string, so I can't count it."
        end

        it "fails" do
            expect{count_words(nil)}.to raise_error "The argument given is not a string, so I can't count it."
        end
    end

end