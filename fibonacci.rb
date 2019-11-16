puts "Enter a maximum integer for Fibonacci: "
limit = gets.chomp.to_i
if limit > 4000000
    puts "Number is too high!"
    limit = gets.chomp.to_i
elsif limit <= 1
    puts first_start_num
elsif limit < 1
    puts "Number is too low!"
    limit = gets.chomp.to_i
else
    first_start_num = 1
    second_start_num = 2
    add_num = 0

    puts first_start_num
    puts second_start_num

    while add_num < limit
        add_num = first_start_num + second_start_num
        first_start_num = second_start_num
        second_start_num = add_num
        if add_num > limit
            break
        else
            puts add_num
        end
    end
end
