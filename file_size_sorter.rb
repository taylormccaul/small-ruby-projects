#user_input = gets.chomp
#f = File.new(user_input.to_s, "r")
#puts File::directory?("./")
#content = IO.readlines(f)
#puts content[3]
#if f
#	content = f.sysread(10)
#	puts content
#end
#file_sizes = []
#file_names = []
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
