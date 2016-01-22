#  description
#  try all values between 2..value - 1
#  and collect all modulos in a set
#  if theres a zero in this set,
#  the value is no prime number

def prim value
  for i in 2..(value - 1)
    if value % i == 0 
      return 0
    end
  end
  
  return 1
end

def getprimto max
  primes = []
  for i in 1..max  
    prime = prim(i)
    if prime == 1
      primes.push(i)
    end
  end
  printf('There are %d prime numbers', primes.count)
end
