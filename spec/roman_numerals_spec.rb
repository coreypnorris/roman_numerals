require('rspec')
require('roman_numerals')

describe('roman_numerals') do
  it("translates numbers into roman numerals") do
    roman_numerals(3).should(eq("III"))
  end
  it("translates numbers into roman numerals") do
    roman_numerals(4).should(eq("IV"))
  end
  it("translates numbers into roman numerals") do
    roman_numerals(8).should(eq("VIII"))
  end
  it("translates numbers into roman numerals") do
    roman_numerals(9).should(eq("IX"))
  end
  it("translates numbers into roman numerals") do
    roman_numerals(39).should(eq("XXXIX"))
  end
  it("translates numbers into roman numerals") do
    roman_numerals(99).should(eq("XCIX"))
  end
  it("translates numbers into roman numerals") do
    roman_numerals(225).should(eq("CCXXV"))
  end
  it("translates numbers into roman numerals") do
    roman_numerals(3999).should(eq("MMMCMXCIX"))
  end
end
