# 繰り返し処理（.step）

1.step(10, 2) { |n| puts n }

puts "##########"

10.step(1, -2) { |n| puts n }


# $ code step.rb
# $ ruby $_
# 1
# 3
# 5
# 7
# 9
# ##########
# 10
# 8
# 6
# 4
# 2