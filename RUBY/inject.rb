# How to use the inject function

# The inject function is pretty useful function in ruby. It can be used to get values from an object
# added to an operator to get results

# example

puts [3, 6, 10, 13].inject(:+)

# All it has done is => (((3 + 6) + 10) + 13) => 32
# The operator can be use replaced to get various results

# Similarly we can use a block with inject function

puts [3, 6, 10, 13].inject {|sum, number| sum + number} # This will yeild the same results

# you can also use this method to pass it a default value for an accumulator

puts [3, 6, 10, 13].inject(0, :+)

puts [3, 6, 10, 13].inject(0) {|sum, number| sum + number}

[[:student, "Stanley Enow"], [:course, "Web Dev"]].inject({}) do |result, element|
    result[element.first] = element.last
    p result
end # Here the accumulator is the empty hash passed to inject function
 
[[:student, "Stanley Enow"], [:course, "Web Dev"]].inject({}) do |result, element|
    result[element.first.to_s] = element.last.upcase
    p result
end # Here the accumulator is the empty hash passed to inject function
 
[[:student, "Stanley Enow"], [:course, "Web Dev"]].inject({}) do |result, element|
    result[element.first.to_s] = element.last.split
    p result
end # Here the accumulator is the empty hash passed to inject function
 
# In general, the inject method can be used to loop through an array or hash and perform some actions

[10, 20, 30, 5, 7, 9, 3].inject([]) do |result, element|
    result << element.to_s if element > 9
    p result
end

# Also note that inject method loops through the array or hash and print all pair that meet the condition
