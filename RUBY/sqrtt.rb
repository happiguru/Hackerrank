def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  return number if number == 0 || number == 1
  $answer
  while min_interval <= max_interval do
    $middle = (min_interval + max_interval) / 2
    return $middle if $middle * $middle == number
    if $middle * $middle < number
      min_interval = $middle + 1
      $answer = $middle
    else
      max_interval = $middle - 1
    end
  end
  return $answer
end

puts sqrt(25)

puts sqrt(7056)