# Write a Ruby program to create a new string where "if" is added to the front of given string. 
# If the string already begins with "if", return the string unchanged.
# Sample output:
# if else

def add_if(str)
    start_str = str.slice(0..2)
    if start_str != "if "        
        str = "if " << str 
    end
    return str
end

puts add_if("if else")
puts add_if("else")