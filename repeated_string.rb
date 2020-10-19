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