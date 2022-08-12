# check_grammer("Hello world.") => true
# check_grammer("hello world") => false
# check_grammer("Hello world") => false
# check_grammer("hello world.") => false
# check_grammer("hello world.") => false

require "design_a_single_method_ex_two"

RSpec.describe "Correct grammer method" do
    it "Checks the sentence begins with a capital letter and ends with a full stop." do
        result = check_grammer("Hello world.")
        expect(result).to eq true
    end

    it "Checks false if the sentence doesn't start with a capital letter and doesn't end with a full stop." do
        result = check_grammer("hello world")
        expect(result).to eq false
    end

    it "Checks false if the sentence starts with a capital letter but doesn't end with a full stop." do
        result = check_grammer("Hello world")
        expect(result).to eq false
    end

    it "Checks false if the sentence doesn't start with a capital letter but ends with a full stop." do
        result = check_grammer("hello world.")
        expect(result).to eq false
    end

end