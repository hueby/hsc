def digital_root(n)
  number = n.to_s
  if number.length > 1
    sum = 0
    number.each_char do |p|
      sum += p.to_i
    end
    puts sum
    digital_root(sum)
  else 
    n
  end
end
