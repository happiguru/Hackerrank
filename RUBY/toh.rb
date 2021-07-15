def move(starting, goal)
  n = 2
  
  if starting == 1
    mid = 2
    toh(n, starting, goal, mid)
  else
    mid = 1
    toh(n, starting, goal, mid)
  end

end

# def toh(n, starting, mid, goal)
#   if n == 1
#     puts "#{starting} -> #{goal}"
#     return
#   end
#   toh(n-1, starting, goal, mid)
#   puts "#{starting} -> #{goal}"
#   toh(n-1, mid, starting, goal)
#   nil
# end

def toh(n, starting, goal, mid)
  if n == 1
    puts "#{starting} -> #{goal}"
  else
    toh(n-1, starting, mid, goal)
    # toh(1, starting, goal, mid)
    puts "#{starting} -> #{goal}"
    toh(n-1, mid, goal, starting)
    
  end
end


puts move(1, 3)

puts move(2, 3)