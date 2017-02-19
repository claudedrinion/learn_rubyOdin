# Stock picker method that takes in an array of stock prices
# one for each hypothetical day. Returns a pair of days representing the best
# day to buy and the best day to sell.
# Days start at 0.

def stock_picker(array)
  profit = 0
  buy_day = -1
  sell_day = -1
  array.length.times do |i|
    for j in i...array.length do
      if array[j] - array[i] > profit
        profit = array[j] - array[i]
        buy_day = i
        sell_day = j
      end
    end
  end
  return [buy_day, sell_day]

end

puts stock_picker([17,3,6,9,15,8,6,1,10])
