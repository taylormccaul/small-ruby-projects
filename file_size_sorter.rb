#morse_list = []

#user_input = gets.chomp
#f = File.new(user_input.to_s, "r")
puts File::directory?("./")
#content = IO.readlines(f)
#puts content[3]
#if f
#	content = f.sysread(10)
#	puts content
#end
#file_sizes = []
#file_names = []
Dir.foreach("./") do |file|
	next if file == "." || file == ".." || File::directory?(file) || /^\./ =~ file || /^[ntNT]/ =~ file
	#file_size = file.size
	#file_sizes.push(file_size)
	#file_names.push(file)
	#file_sizes = file_sizes.sort.reverse
	#next if File::directory?(file)
	#next if /^\./ =~ file || /^[ntNT]/ =~ file
	print file + " - "
	puts (file.size).to_s + "B"
end
