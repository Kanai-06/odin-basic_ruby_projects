require 'bundler/setup'
Bundler.require(:default)

def stock_picker(prices)
  day_to_buy = 0
  day_to_sell = 0
  margin = prices[day_to_sell] - prices[day_to_buy]

  (0...prices.length - 1).each do |buying_day|
    ((buying_day + 1)...prices.length).each do |selling_day|
      next unless prices[selling_day] - prices[buying_day] > margin

      day_to_buy = buying_day
      day_to_sell = selling_day
      margin = prices[day_to_sell] - prices[day_to_buy]
    end
  end

  [day_to_buy, day_to_sell]
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
p stock_picker(prices)
