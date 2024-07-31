puts "Please provide a dictionary of space-separated words: "
dictionary = gets.chomp.split(" ")
puts "\n"

puts "What word(s) should we be looking for in the dictionary?"
text = gets.chomp
puts "\n"

def substrings(string, array)
  array.reduce(Hash.new(0)) do |results, word|
    if string.downcase.include?(word.downcase)
      results[word.downcase] += string.downcase.scan(word.downcase).length
    end
    results
  end
end

puts "The following substrings were found this many times:"
p substrings(text, dictionary)