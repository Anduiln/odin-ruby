puts "Text to encode: "
text = gets.chomp
puts "\n"
puts "Shift by how many positions?"
key = gets.chomp.to_i
puts "\n"

def caesar_cipher(string, shift)
  encoded_string = ""
  string.each_char do |char|
    if char.match?(/[a-z]/)
      encoded_string << ((char.ord + shift - "a".ord) % 26 + "a".ord).chr
    elsif char.match?(/[A-Z]/)
      encoded_string << ((char.ord + shift - "A".ord) % 26 + "A".ord).chr
    else
      encoded_string << char
    end
  end
  encoded_string
end

puts "Encoded text: "
puts caesar_cipher(text, key)