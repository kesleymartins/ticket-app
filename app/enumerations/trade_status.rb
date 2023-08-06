class TradeStatus < EnumerateIt::Base
  associate_values(:open, :closed)
end
