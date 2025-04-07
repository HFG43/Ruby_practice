# frozen_string_literal: true

def stock_picker(stock_prices)
  max_count = 0
  best_pair = []
  stock_prices.each_with_index do |value, index|
    subsequent_index = index + 1
    stock_prices[subsequent_index..stock_prices.size].each_with_index do |selling_value, selling_index|
      result = selling_value - value
      next unless result > max_count

      max_count = result
      best_pair[0] = index
      best_pair[1] = selling_index + subsequent_index
    end
  end
  puts best_pair
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10, 20, 3, 45])
