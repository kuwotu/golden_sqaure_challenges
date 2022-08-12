def make_snippet(arg)

    fail "Error: this is not a string, so it can't be shorterned" unless arg.kind_of?(String)

    string_arr = ""
  
    if arg.include?(" ")
        string_arr = arg.split(" ")
        if (string_arr.count > 5)
            shorterned_str =  string_arr[0...5].join(" ")
            return shorterned_str + "..."
        else return string_arr.join(" ")
        end

    else string_arr = arg
    end

end