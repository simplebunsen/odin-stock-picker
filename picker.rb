def stock_picker(stocks_array)

  legal_profit_hash = {}

  stocks_array.each_with_index do |current_price, current_index|

    incrementing_index = current_index + 1;

    while(incrementing_index < stocks_array.length) do
      profit = stocks_array[incrementing_index] - current_price
      #puts profit.to_s << " at " << current_index.to_s << ", " << incrementing_index.to_s
      legal_profit_hash[[current_index, incrementing_index]] = profit
      incrementing_index += 1
    end

  end

  max_profit = legal_profit_hash.max
  max_profit_indices =  legal_profit_hash.key(max_profit)

  p max_profit << " at " << max_profit_indices





end

stock_picker([17,3,6,9,15,8,6,1,10])