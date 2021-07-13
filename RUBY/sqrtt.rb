def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  return number if number == 0 || number == 1
  $answer
  while min_interval <= max_interval do
    $middle = (min_interval + max_interval) / 2
    # To check if n is a perfect square
    return $middle if $middle * $middle == number
     # Since I need a floor, I update
    # answer when $mid*$mid is smaller
    # than n, and move closer to sqrt(n)
    if $middle * $middle < number
      min_interval = $middle + 1
      $answer = $middle
      # if $mid*$mid is 
      # greater than n
    else
      max_interval = $middle - 1
    end
  end
  return $answer
end

puts sqrt(25)

puts sqrt(7056)