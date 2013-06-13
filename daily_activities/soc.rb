
def soc n
  if n == 1
    return 1
  else
    return n**3 + soc(n-1)
  end
end

puts soc(7)

def soc2 n, sum=0
  if n == 0
    return sum
  else
    return soc2(n-1, sum+n**3)
  end
end

puts soc2(7)