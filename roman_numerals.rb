class Integer
  ROMAN_NUMERALS = [
    ['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX'],
    ['X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC'],
    ['C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM'],
    ['M', 'MM', 'MMM'],
  ]

  def to_roman
    return 'Not possible to convert to a Roman Number' if self.zero? || self > 3000
    
    digits = self.digits.reverse
    roman = ''

    digits.each.with_index do |d, i|
      next if d.zero?
      roman += ROMAN_NUMERALS[digits.length - 1 - i][d - 1]
    end
    
    roman
  end

end

integer = gets
puts integer.to_i.to_roman