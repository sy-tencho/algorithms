# BFS: 深さ優先検索の実装
# ABCの組み合わせ

def bfs(ptns)
  queue = ['']

  until queue.empty?
    str = queue.pop
    ptns << str unless str.empty?

    unless str.length === 3
      queue << str + 'A'
      queue << str + 'B'
      queue << str + 'C'
    end
  end
end

ptns = []
bfs(ptns)

puts ptns
