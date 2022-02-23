require './morse'

def decode_word(word)
  arr_word = word.split
  result = ''
  arr_word.each do |char|
    result += decodechar(char)
  end
  result
end

def decode_message(message)
  result = ''
  arr_message = message.split('   ')
  arr_message.each { |word| result += " #{decode_word(word)}" }
  result
end

puts decode_word('-- -.--   -. .- -- .')
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
