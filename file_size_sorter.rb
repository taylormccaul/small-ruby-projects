def find_ext_name
    puts "Specify a file path. If left blank, the current directory will be chosen by default."
    file_dir = gets.chomp

    if file_dir == "" || file_dir == " "
        file_dir = "./"
    end

    puts "Enter which file extension you would like to sort by. Ex: .txt, .png, .pdf. If left blank, all files in the directory will be listed."
    file_ext_name = gets.chomp

    Dir.foreach(file_dir) do |file|
        if file_ext_name == "" || file_ext_name == " "
	    next if file == "." || file == ".." || File::directory?(file) || /^\./ =~ file || /^[ntNT]/ =~ file
	    puts file
	else
	    next if File.extname(file) != file_ext_name
	    puts file
	end
    end
end

def read_lines
    puts "Enter a file to read: "
    read_file = gets.chomp

    puts "Enter how many lines to read: "
    read_num_lines = gets.chomp.to_i

    File.foreach(read_file).with_index do |line, line_num| 
	if line_num.to_i >= read_num_lines
	    break
	else
	    puts "#{line_num}: #{line}"
	end
    end

end

def list_file_size

    puts "Enter a directory path. If left blank, the current directory will be chosen by default."
    file_path = gets.chomp

    if file_path == "" || file_path == " "
	file_path = "./"
    end

    puts "Enter a file extension name to filter by. If left blank, all files in the directory will be listed."
    file_ext_name = gets.chomp

    puts "Would you like to specify a minimum size for files to be listed? If not, leave this field blank."
    file_minimum = gets.chomp.to_i

    if file_minimum == "" || file_minimum == " "
	file_minimum = 0
    end

    Dir.foreach(file_path) do |file|
	next if file == "." || file == ".." || File::directory?(file) || /^\./ =~ file || /^[ntNT]/ =~ file || ((File.size(file) / 1000.00).ceil) < file_minimum

	if file_ext_name == "" || file_ext_name == " "
            print file + " - "
	    puts ((File.size(file) / 1000.00).ceil).to_s + "KB"
	else
	    next if File.extname(file) != file_ext_name
	    print file + " - "
	    puts ((File.size(file) / 1000.00).ceil).to_s + "KB"
	end
    end
end

puts list_file_size

#file_sizes = []
#counter = 0
#file_sizes.push((File.size(file) / 1000.00).ceil)
#file_sizes.sort
#counter += 1
#if ((File.size(file) / 1000.00).ceil) == file_sizes[counter]
#	puts "MATCH"
#end
#counter += 1
#puts file_sizes
