def stock_picker(array)
	max_profit = 0
	buy_day = 0
	#can only sell after you buy

	while buy_day <= array.length-2
		sell_day = buy_day + 1
		while sell_day <= array.length-1
			profit = array[sell_day] - array[buy_day]
			if profit > max_profit
				max_profit = profit
				buy = buy_day
				sell = sell_day
			end
			sell_day += 1
		end
		buy_day += 1
	end
	print days = [buy, sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])