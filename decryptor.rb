# decode a char
def decode_char(str)
  case str
  when ".-"
    "A"
  when "-..."
    "B"
  when "-.-."
    "C"
  when "-.."
    "D"
  when "."
    "E"
  when "..-."
    "F"
  when "--."
    "G"
  when "...."
    "H"
  when ".."
    "I"
  when ".---"
    "J"
  when "-.-"
    "K"
  when ".-.."
    "L"
  when "--"
    "M"
  when "-."
    "N"
  when "---"
    "O"
  when ".--."
    "P"
  when "--.-"
    "Q"
  when ".-."
    "R"
  when "..."
    "S"
  when "-"
    "T"
  when "..-"
    "U"
  when "...-"
    "V"
  when ".--"
    "W"
  when "-..-"
    "X"
  when "-.--"
    "Y"
  when "--.."
    "Z"
  else
    ""
  end
end

# decode word
def decode_word(word)
  word
  .split(" ")
  .map {|char| decode_char(char)}
  .join()
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
