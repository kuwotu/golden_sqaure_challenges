# As a user
# So that I can improve my grammar
# I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

# correct_grammer = check_grammer(text)
# text: a string i.e "Let's get the shopping from the car."
# correct_grammer: a boolean which, so either true or false

# The method doesn't print anything or have any other side-effects

def check_grammer(sentence)
    first_letter = sentence[0]
    end_of_sentence = sentence[sentence.length - 1]
    if first_letter === first_letter.capitalize && end_of_sentence == "."
        return true
    else return false
    end
end