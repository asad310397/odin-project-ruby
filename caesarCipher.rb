def caesar_cipher(old_str, shift)
  new_str = ''
  old_str.each_char do |c|
    # check if the character is a letter
    if c.match?(/[[:alpha:]]/)
      # if it's a letter check if it's going out of bounds
      new_str += if (c.ord.between?(65, 90) and c.ord + shift > 90) \
        or (c.ord.between?(97, 122) and c.ord + shift > 122)
        (c.ord + shift - 26).chr
      else
        (c.ord + shift).chr
      end
    else
      # adding non-alpha characters
      new_str += c
    end    
  end

  return new_str
end

puts caesar_cipher('What a string!', 5)
