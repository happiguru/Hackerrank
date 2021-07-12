def repeatedString(s, n)
    repeat = 0
    strlenth = s.length
    toarray = s.split('')
    num_repeat = (n / strlenth).floor()
    num_repeat = num_repeat * s.count('a')
    for i in 0 ... n % strlenth
        if (toarray[i]) == 'a'
            repeat = repeat + 1
        end
    end
    return repeat = num_repeat + repeat
end

=begin
    The function takes a string s and n where:
    s is a finite string less than n
    and 
    n is the limit on an infinite multiple of s string

    First we declare a variable which holds the value of the total occurrence of 'a'
    Now we determine the length of the string and save it in a variable strlength
    After that, we split the characters of the string and save it in an array

    Now we need to calculate the number of a's.
    We will first calculate the number of time the string was repeated and save it 
    But the trick is we might have  the exact since there could be some remainder
    We then calculate the number of a's in both the even and odd sides of our division
    Then we will save the value onto the repeat variable.
=end