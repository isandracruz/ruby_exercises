# Write a Ruby program to accept a filename from the user print the extension of that.
# Sample Output:
# File name: test.rb
# Base name: test
# Extension: .rb
# Path name: /user/system

filename = File.basename("C:/Users/familia/Desktop/firstfile.txt")
puts "File Name: #{filename}"

basename = File.basename("C:/Users/familia/Desktop/firstfile.txt",".*")
puts "Base Name: #{basename}"

extension = File.extname("C:/Users/familia/Desktop/firstfile.txt")
puts "Extension: #{extension}"

pathname = File.dirname("C:/Users/familia/Desktop/firstfile.txt")
puts "Path name: #{pathname}"