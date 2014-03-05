def roman_numerals(number)
  result = ""
  result_ones = ""
  result_tens = ""
  result_hundreds = ""
  result_thousands = ""
  characters = number.to_s.size
  char_array = number.to_s.split(//)
  roman_hash = {
    1 => "I", 5 => "V",
    10 => "X", 50 => "L",
    100 => "C", 500 => "D",
    1000 => "M"
 }

if char_array.size == 2 && number >= 40
  if char_array[0].to_i == 4
    result_tens += roman_hash[10] + roman_hash[50]
    char_array.shift
  elsif char_array[0].to_i <= 8
    result_tens += roman_hash[50] + (roman_hash[10] * (char_array[1].to_i - 5))
    char_array.shift
  elsif char_array[0].to_i == 9
    result_tens += roman_hash[10] + roman_hash[100]
    char_array.shift
  end
end

if char_array.size == 2 && number < 40
    if char_array[0].to_i <= 3
      result_tens = roman_hash[10] * char_array[0].to_i
      char_array.shift
    end
  end

 if char_array.size == 1
  if char_array[0].to_i <= 3
    result_ones += roman_hash[1] * char_array[0].to_i
  elsif char_array[0].to_i == 4
    result_ones += roman_hash[1] + roman_hash[5]
  elsif char_array[0].to_i <= 8
    result_ones += roman_hash[5] + (roman_hash[1] * (char_array[0].to_i - 5))
  elsif char_array[0].to_i == 9
    result_ones += roman_hash[1] + roman_hash[10]
  end
 end

  
 
 result = result_thousands + result_hundreds + result_tens + result_ones
 result

end

puts roman_numerals(95)
