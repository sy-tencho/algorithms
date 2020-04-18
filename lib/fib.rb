def rec(n)
  if n <= 2
    1
  else
    rec(n - 1) + rec(n - 2)
  end
end

$memo = []

# Top down solution, memoization
def top(n)
  if n <= 2
    1
  else
    if $memo[n]
      $memo[n]
    else
      $memo[n] = top(n - 1) + top(n - 2)
    end
  end
end

# Bottom up solution
def bottom(n)
  if n <= 2
    1
  else
    fib1 = fib2 = fib3 = 1
    (n - 1).times do
      fib3 = fib1 + fib2
      fib1 = fib2
      fib2 = fib3
    end
    fib1
  end
end
