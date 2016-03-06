# https://gist.github.com/psave/59a319f40fa283ee017f
# Old style roman numeral converter.
# They did not use to use subtraction in the past on the Roman Numerals
# I.e. "IV" was written as "IIII".ßß

#Key value pairs of the numerals in decending order to help with the next "while loop"
@numerals = {
  1000 => 'M',
  500 => 'D',
  100 => 'C',
  50 => 'L',
  10 => 'X',
  5 => 'V',
  1 => 'I'
}

def to_roman(num)
  roman = ""
  while num > 0
    @numerals.each do |key, value|
      # #I want to check for the first value that is less than the num
      if num >= key
     #Then I want to subtract that value from the number
        roman << value
        num -= key
        break
      end
    end
  end
  return roman
end
 
# Test code... these should all print out "true".
 
# puts to_roman(1) == "I"
# puts to_roman(3) == "III"
# puts to_roman(6) == "VI"


puts to_roman(959)