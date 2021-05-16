require "pp"
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

#important part: above creates a hash that calcs start and end index to value differences in the original array 
#if [1,4] => 12 is the largest difference in the stocks_array (which it is), below is supposed to pick it

  pp legal_profit_hash

  max_profit = legal_profit_hash.values.max # this returns the [7,8] => 9 element instead of 12 
  pp max_profit
  max_profit_indices =  legal_profit_hash.key(max_profit) #this obviously won't work then

  p max_profit.to_s << " at " << max_profit_indices.to_s





end

stock_picker([17,3,6,9,15,8,6,1,10])