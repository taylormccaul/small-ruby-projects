=begin
loop over elements of array once
store the first number in a variable (greatestNum)
if the array element i is greater in value than the variable, use that value for the variable
store the index of greatestNum in a variable (use index method)

loop over elements of array once more
store the first number in a variable (smallestNum)
if the array element i is greater in value than the variable, use that value for the variable
store the index of smallestNum in a variable

push the indexes of greatestNum and smallestNum into an array
return the array
=end


def stock_picker(stocks)
#stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]

current_num = 0
greatest_num = stocks[0]
smallest_num = stocks[0]
days = []
while current_num < stocks.length
    if stocks[current_num] > greatest_num
        greatest_num = stocks[current_num]
    elsif stocks[current_num] < smallest_num
        smallest_num = stocks[current_num]
    end
    current_num += 1
end

total = greatest_num - smallest_num

days.push(stocks.index(greatest_num))
days.push(stocks.index(smallest_num))


puts "Greatest num: " + greatest_num.to_s
puts "Smallest num: " + smallest_num.to_s

puts "Profit: $#{greatest_num.to_s} - $#{smallest_num.to_s} = $#{total.to_s}"

print days

end
stocks = []

puts "Enter a list of stock prices in integer form: "
stock_prices = gets.chomp
while stock_prices != " " || stock_prices != ""
    stocks.push(stock_prices.to_i)
    stock_prices = gets.chomp

    #if stock_prices =~ /[a-zA-Z]||\W/ 
    #    puts "Please enter an integer."
    if stock_prices == " " || stock_prices == ""
        stock_picker(stocks)
        break
    end
end
