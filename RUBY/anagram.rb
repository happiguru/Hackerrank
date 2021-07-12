s = "hellom"

s1 = ""
s2 = ""
l = s.length
if(s.length % 2 == 0)
    s1 = s[0..l/2]
    s2 =  s[l/2..l]
    puts s1
puts s2
else
    puts -1
end
