def count_words(string)
    fail "The argument given is not a string, so I can't count it." unless string.is_a?(String)
    return string.split(" ").length
end