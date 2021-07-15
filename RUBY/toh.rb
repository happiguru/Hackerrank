def move(starting, goal)
  n = 2
  
  if starting == 1
    mid = 2
    toh(n, starting, mid, goal)
  else
    mid = 1
    toh(n, starting, mid, goal)
  end

end

def toh(n, starting, mid, goal)
  if n == 1
    puts "#{starting} -> #{goal}"
    return
  end
  toh(n-1, starting, goal, mid)
  puts "#{starting} -> #{goal}"
  toh(n-1, mid, starting, goal)
  nil
end

puts move(1, 3)

puts move(2, 3)