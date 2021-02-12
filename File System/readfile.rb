# Write a Ruby program to read the content of a file.

print "Inserte la ubicación del archivo:"
filepath = gets.chomp
content = File.open(filepath)
content.each do |line|
 puts line
end