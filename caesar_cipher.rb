def caesar_cipher(str, shift_num)
  alphabet_lower = ("a".."z").to_a
  alphabet_upper = ("A".."Z").to_a
  new_str = ''
  str_arr = str.split('')
  str_arr.each_with_index do |character, index|
    if character == character.downcase && alphabet_lower.include?(character)
      alphabet_lower.each_with_index do |letter, index|
        if letter == character
          if index + shift_num <= 25
            new_str << alphabet_lower[index + shift_num]
            break;
          else
            new_str << alphabet_lower[(index + shift_num) - 25 -1]
            break;
          end
        end
      end
    elsif character == character.upcase && alphabet_upper.include?(character)
      alphabet_upper.each_with_index do |letter, index|
        if letter == character
          if index + shift_num <= 25
            new_str << alphabet_upper[index + shift_num]
            break;
          else
            new_str << alphabet_upper[(index + shift_num) - 25 -1]
            break;
          end
        end
      end
    else
      new_str << character
    end
  end
  new_str
end

puts caesar_cipher("What a string!", 5)
puts caesar_cipher("xyz", 2)
