# frozen_string_literal: true

def substrings(text, substr)
  substr.each_with_object(Hash.new(0)) do |word, result|
    text.split(' ').each do |el|
      result[word] += 1 if el.downcase.include?(word.downcase)
    end
  end
end
