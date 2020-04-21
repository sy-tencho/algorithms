# Pascal's triangle
# コンビネーションを求める時に使える

def pascal(a, b)
  ans = Array.new(a+1) { Array.new(a+1, 0) }
  ans[0][0] = 1

  for i in 1..a
    for j in 0..i
      if j - 1 >= 0
        ans[i][j] = ans[i-1][j-1] + ans[i-1][j]
      else
        ans[i][j] = ans[i-1][j]
      end
    end
  end
  
  return ans[a][b]
end
