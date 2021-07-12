def fib(n)
    return n if n < 2
    fib(n-1) + fib(n-2)
end

# Ruby Memoization is a really good concept
# I works more like creating a data store for values
@cache = [0, 1]

def fibo(n)
    return @cache[n] if @cache[n]

    @cache[n] = fibo(n-1) + fibo(n-2)
end

puts fib(6)

puts fibo(3)