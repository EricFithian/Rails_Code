require 'stock_quote'

puts "Which stock should I advise you on?"
stock_symbol = gets.chomp

if stock.open > 50
  puts "SELL THIS SHIT!"
elsif stock.open < 30
  puts "BUY IT YOU CHEAP BASTARD!"
else
  puts "HOLD ONTO THIS ONE MAN!"
end

puts "THIS IS AN ANNOYING AD. PLEASE UPGRADE IF YOU DON'T WANT TO SEE IT" * 10

