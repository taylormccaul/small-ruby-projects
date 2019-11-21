def tasks
    tasks = ""
    puts "Enter a date: "
    date_time = gets.chomp
    puts "Type a task to add: "
    tasks_to_add = gets.chomp
    tasks_file.puts("#{date_time}:\n")
    while tasks_to_add.downcase != "end"
        #tasks += "#{tasks_to_add}\n"
	      tasks_file.puts("#{tasks_to_add}\n")
	      tasks_to_add = gets.chomp	    
    end
    tasks_file.puts("\n")
    #puts tasks
end

puts tasks
