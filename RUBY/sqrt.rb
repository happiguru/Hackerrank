def sqrt(n)
  return n if n == 0 || n == 1
  $start = 1
  $last = n
  $ans
  while $start <= $last do
    $mid = ($start + $last)/2
    # To check if n is a perfect square
    return $mid if $mid * $mid == n

    # Since I need a floor, I update
    # answer when $mid*$mid is smaller
    # than n, and move closer to sqrt(n)
    if $mid * $mid < n 
      $start = $mid + 1
      $ans = $mid
      # if $mid*$mid is 
      # greater than n
    else
      $last = $mid - 1
    end
  end
  return $ans
end

puts sqrt(25)

puts sqrt(7056)