puts "Provide a list of values to sort, space separated:"
list = gets.chomp.split(" ").map {|element| element.to_i}
puts "\n"

def bubble_sort(array)
  n = array.length
  until n <= 1
    new_length = 0
    for i in 1..n-1 do
      if array[i-1] > array[i]
        array[i-1], array[i] = array[i], array[i-1]
        new_length = i
      end
    end
    n = new_length
  end
  array
end

puts "Ordered list:"
puts bubble_sort(list).join(" ")