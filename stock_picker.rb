# frozen_string_literal: true

def stock_picker(prices)
  best_buy_day = 0
  best_sell_day = 0
  best_price = 0
  # Outer loop to iterate through each price as a potential buy price
  prices.each_with_index do |buy_price, buy_day|
    # Inner loop to iterate through each price as a potential sell price
    prices.each_with_index do |sell_price, sell_day|
      # Only consider sell days that come after the buy day
      next unless sell_day > buy_day

      profit = sell_price - buy_price
      # If the current profit is better than the best one we've found
      next unless profit > best_price

      best_price = profit
      best_buy_day = buy_day
      best_sell_day = sell_day
    end
  end
  [best_buy_day, best_sell_day]
end
