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

 if characters == 1
  if number <= 3
    result_ones += roman_hash[1] * number
  elsif number == 4
    result_ones += roman_hash[1] + roman_hash[5]
  elsif number <= 8
    result_ones += roman_hash[5] + (roman_hash[1] * (number - 5))
  elsif number == 9
    result_ones += roman_hash[1] + roman_hash[10]
  end
 end

  if characters == 2 && number < 40
    if char_array[0].to_i <= 3
      result_tens = roman_hash[10] * char_array[0].to_i
    end
  end
 


 result = result_thousands + result_hundreds + result_tens + result_ones
 result

end

puts roman_numerals(10)
