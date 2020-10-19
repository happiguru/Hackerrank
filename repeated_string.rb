input = 'abcdef'
 
chars = input.split('')
puts chars.length
puts chars[2]

 
 
# chars.each { |c|
#     i= 0
#     print c << chars[i]
#     i+=1
# }

n = 0
while(n<10)
    i= 0
    print chars << chars[i]
    i+=1
end