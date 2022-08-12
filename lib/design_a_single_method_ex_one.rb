#As a user So that I can manage my time
#I want to see an estimate of reading time for a text
# assuming that I can read 200 words a minute.
# reading_time = words_per_min(text)
# text = text user is about to read
# reading_time = amount of time taken for user to read text

def words_per_min(text)
    fail "The text given is not in string format" unless text.is_a?(String)
    text_length = text.split(" ").length
    if text_length == 0
        return 0
    elsif text_length > 0 && text_length < 200
        return 1
    else text_length >= 200
       return text_length/200.round
    end
end