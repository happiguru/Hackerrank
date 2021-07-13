def iterative_factorial(n)
    (1..n).inject(:*)
end

def recursive_factorial(n)
    return 1 if n <= 1
    n * recursive_factorial(n-1)
end

def testfact(n)
    return 1 if n == 1
    n * testfact(n-1)
end

def fac(n)
    if n == 0 
        1
    else
        n * fac(n-1)
    end
end

puts iterative_factorial(5)

puts recursive_factorial(2)

puts testfact(3)

puts fac(3)
