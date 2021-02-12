# Create a file and append a new content

File.open("C:/Users/familia/Desktop/firstfile.txt", "w") do |file|
    file.puts "This is my first file with Ruby"
end

print "Do you want write in my first file? (Y/N):"
answer = gets.chomp

if answer == "Y"
    print "Please enter the content:" 
    newcontent = gets.chomp
    File.open("C:/Users/familia/Desktop/firstfile.txt", "a") do |file|
        file.puts newcontent
    end
end


