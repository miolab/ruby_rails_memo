# * 繰り返し処理
# times

5.times do
  puts "5 times Hi."
end

# 書き方 1
5.times do |i|
  puts "#{i} times Hi"
end

# 書き方 2
5.times { |i|
  puts "#{i} times Hi"
}
