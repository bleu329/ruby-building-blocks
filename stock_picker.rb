def stock_picker prices
  i = 0
  biggest_difference = 0
  while i < prices.size - 1
    j = i + 1
    while j < prices.size
      if prices[j]-prices[i] > biggest_difference
        buy_date = i
        sell_date = j
        biggest_difference = prices[j] - prices[i]
      end
      j += 1
    end
    i += 1
  end
  if buy_date == nil || sell_date == nil
    "You cannot make a profit"
  else
    [buy_date, sell_date]
  end
end

print stock_picker([17,3,6,9,15,8,6,5,1])
print stock_picker([6, 3, 1])
