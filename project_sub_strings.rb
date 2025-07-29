def substrings(str, sub_str_arr)
  mem = {}
  for word in str.split
    for sub_word in sub_str_arr
      if word.upcase.include?(sub_word.upcase)
        if mem[sub_word] == nil
          mem[sub_word] = 1
        else
          mem[sub_word] += 1
        end
      end
    end
  end
  return mem
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

