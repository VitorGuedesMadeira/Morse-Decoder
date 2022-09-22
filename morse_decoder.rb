MORSE = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  ' ' => ' ',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

def decode_char(character)
  MORSE[character].capitalize
end

def split_sentence(sentence)
  if sentence.is_a? String
    sentence.split('   ')
  else
    puts 'Your input should be a string in double or single quote!'
  end
end

def decode_word(word)
  if word.is_a? String
    word_decode = ''
    word.split.each do |morse|
      dc = decode_char(morse)
      word_decode += dc.to_s
    end
  end
  word_decode
end

def decode(sentence)
  words = split_sentence(sentence)
  sentence_decode = ''
  words.each do |word|
    word_decode = decode_word(word)
    sentence_decode += "#{word_decode} "
  end
  sentence_decode.strip
end

# Test
p decode_char('-...') #=> B
p decode_word('-- -.--') # => MY
p decode('-- -.--   -. .- -- .') # => MY NAME
sentence = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
p decode(sentence) # => A BOX FULL OF RUBIES
