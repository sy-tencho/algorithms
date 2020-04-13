def euclid(a, b)
  return a if b == 0
  euclid(b, a % b)
end
