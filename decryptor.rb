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
  '--..' => 'Z'
}.freeze

# decode a char
def decode_char(str)
  MORSE_CODE[str]
end

# decode word
def decode_word(word)
  word
    .split
    .map { |char| decode_char(char) }
    .join
end

# decode phrase
def decode_phrase(phrase)
  phrase.split("   ")
  .map {|word| decode_word(word)}
  .join(" ")
end

# call the functions
p decode_char(".-")
p decode_word("-- -.--")
p decode_phrase(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
