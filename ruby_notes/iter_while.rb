# * 繰り返し処理
# while

i = 0

while i < 10 do
  puts i
  i += 1
end


puts "////////"

# 無限ループの作り方と、制御構造の適用
# ################################
# !無限ループ!（Ctl + c で強制終了）

# i = 0

# loop do
#   puts i
#   i += 1
# end

# 以下と同様

# while true do
#   puts i
#   i += 1
# end


# ##################
# breakで、特定条件を満たしたら処理を抜ける。
i = 10

loop do
  puts i
  i += 1
  break if i == 20
end


puts "////////"

# ##################
# 処理をスキップする（next）
numbers = [101, 102, 103, 104, 105]

numbers.each do |n|
  # nがもし奇数なら、ループ内のその回の処理をスキップする
  next if n.odd?
  puts n
end


puts "////////"

# ##################
# next使って、偶数のときだけ（条件）出力
numbers.each do |n|
  # next if n % 2 == 0
  next if n.even?
  puts n
end
