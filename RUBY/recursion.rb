def bottles(n)
  if n == 0
    puts "no more bottles of beer on the wall"
  else
    puts "#{n} bottles of beer on the wall"
    bottles(n-1)
  end
end

def flatten(array, result = [])
  array.each do |element|
    if element.kind_of?(array)
      flatten(element, result)
    else
      result << element
    end
  end
  result
end

puts bottles(3)

puts flatten([[1,2,3],[4,5,6]])