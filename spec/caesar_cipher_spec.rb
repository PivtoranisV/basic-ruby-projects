# frozen_string_literal: true

require_relative '../caesar_cipher'

describe '#caesar_cipher' do # rubocop:disable Metrics/BlockLength
  context 'when shifting lowercase letters' do
    it 'shifts a letter by 3' do
      shifted_text = caesar_cipher('abc', 3)
      expect(shifted_text).to eq('def')
    end

    it 'wraps around from z to a' do
      shifted_text = caesar_cipher('xyz', 3)
      expect(shifted_text).to eq('abc')
    end
  end

  context 'when shifting uppercase letters' do
    it 'shifts a letter by 3' do
      shifted_text = caesar_cipher('ABC', 3)
      expect(shifted_text).to eq('DEF')
    end

    it 'wraps around from Z to A' do
      shifted_text = caesar_cipher('XYZ', 3)
      expect(shifted_text).to eq('ABC')
    end
  end

  context 'when the string contains non-alphabetic characters' do
    it 'leaves non-alphabetic characters unchanged' do
      shifted_text = caesar_cipher('hello, world!', 5)
      expect(shifted_text).to eq('mjqqt, btwqi!')
    end
  end

  context 'when shift is negative' do
    it 'shifts letters backwards' do
      shifted_text = caesar_cipher('def', -3)
      expect(shifted_text).to eq('abc')
    end
  end

  context 'when no shift is applied (shift = 0)' do
    it 'returns the original string' do
      shifted_text = caesar_cipher('abc', 0)
      expect(shifted_text).to eq('abc')
    end
  end
end
