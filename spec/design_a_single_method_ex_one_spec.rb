
# words_per_min("") => 0
# words_per_min('sentence') => 1
# words_per_min('sentence'*200) => 1
# words_per_min('sentence'*600) => 3
# words_per_min(nil) throws an error
# words_per_min(true) throws an error
# words_per_min(false) throws an error

require 'design_a_single_method_ex_one'

RSpec.describe "reading_time" do
    it "counts how many words can be read in minutes" do
        result = words_per_min("")
        expect(result).to eq 0
    end
    it "counts how many words can be read in minutes" do
        result = words_per_min('sentence '*600)
        expect(result).to eq 3
    end

    it "fails" do
        expect{words_per_min(true)}.to raise_error "The text given is not in string format"
    end

    it "fails" do
        expect{words_per_min(nil)}.to raise_error "The text given is not in string format"
    end

    it "fails" do
        expect{words_per_min(123)}.to raise_error "The text given is not in string format"
    end
end