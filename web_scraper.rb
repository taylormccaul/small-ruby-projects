require 'nokogiri'
require 'open-uri'

puts "Enter a link to scrape: "
scrape_link = gets.chomp

document = Nokogiri::HTML(open(scrape_link.to_s))

puts "Which parts of the page would you like to scrape? Headers/paragraphs/links: "
doc_scrape = gets.chomp

if doc_scrape.downcase == "headers"
  doc_content = document.css("h2")

  doc_content.each do |header|
    puts header.content
  end
elsif doc_scrape.downcase == "paragraphs"
  doc_content = document.css("p")

  doc_content.each do |paragraph|
    puts " \n"
    puts paragraph.content.to_s
    puts " \n"
  end
elsif doc_scrape.downcase == "links"
  doc_content = document.css("a")
  
  doc_content.each do |link|
    puts link.content
  end
end

puts "Would you like to save the contents of this scrape?"
user_input = gets.chomp
if user_input.downcase == "yes"
  f = File.new("webscrapes.rtf", "a")
  f.puts("\nContents scraped from #{scrape_link}\n")
  doc_content.each do |contents|
    f.puts(contents.content)
    f.puts("\n")
  end
  f.close
end