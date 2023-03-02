MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '-----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9'
}.freeze

def decode_char(char_code)
  MORSE_CODE[char_code]
end

def decode_word(word_code)
  word = ''
  letters_code = word_code.split
  letters_code.each { |letter_code| word += (decode_char letter_code) }
  word
end

def decode(msg_code)
  words_code = msg_code.split('   ')
  words_code = words_code.map { |word_code| (decode_word word_code) }
  words_code.join(' ')
end

puts 'Enter a message in Morse code.'
puts 'Do not forget to separate words with three spaces and'
puts 'letters in a word with one space:'

msg = gets.chomp

puts decode(msg)
