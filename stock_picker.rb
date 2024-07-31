puts "Provide array of daily stock prices, space separated:"
prices = gets.chomp.split(" ").map {|element| element.to_i}
puts "\n"

def stock_picker(array)
  dates = []
  profits = array.map.with_index do |price, index|
    if index >= array.length - 1 
      0
    else
      array.slice(index + 1..array.length).max - price
    end
  end
  dates.push(profits.index(profits.max))
  dates.push(array.rindex(array.slice(dates[0]..array.length).max))
end

result = stock_picker(prices)
puts "Buy on day #{result[0] + 1}, sell on day #{result[1] + 1}!"