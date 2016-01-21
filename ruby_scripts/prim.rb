def prim value
  res = [] 
  if value <= 1
    return 1
  end

  for i in 2..(value - 1)
      res.push(value % i)
    end
     
  res.min != 0 ? 1 : 0
end
