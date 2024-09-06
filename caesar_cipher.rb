# frozen_string_literal: true

def caesar_cipher(text, shift)
  text.chars.map do |char|
    if char.between?('A', 'Z')
      # Shift and wrap for uppercase letters
      ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
    elsif char.between?('a', 'z')
      # Shift and wrap for lowercase letters
      ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
    else
      # Non-alphabetic characters are not changed
      char
    end
  end.join
end

p caesar_cipher('Bmfy f xywnsl!', -5)
p caesar_cipher('!!!Hello!!!', 15)
