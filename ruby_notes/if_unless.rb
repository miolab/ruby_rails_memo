# if / unless
puts "########"


# * if

score = 99

if score >= 80
  puts "優"
elsif score >= 70
  puts "良"
elsif score >= 60
  puts "可"
else
  puts "不可"
end

animal = "cow"

if animal == "cat"
  puts "にゃー"
elsif animal == "dog"
  puts "わんわん"
elsif animal == "snake"
  puts "しゃー"
else
  puts "・・・"
end

puts "########"


# * 評価結果が、戻り値となる

color = "blue"

result_color =  if color == "red"
            "紅"
          elsif color == "blue"
            "蒼"
          else
            "他色"
          end

puts result_color

puts "########"


# * unless

# n = 0
n = 1

unless n.zero?
  puts "Not zero."
else
  puts "That is zero."
end

# # 以下と同じ。
# if !n.zero?
#   puts "Not zero."
# end

# # unlessでは、elsifは使えない。

puts "########"


# * 三項演算子

# if
season = "winter"

puts "冬" if season == "winter"

val = "test"
puts "なし" if val == "nashi"

# unless
puts "夏 以外" unless season == "summer"

# if / else
is_winter = season == "winter" ? "冬" : "冬 以外"
puts is_winter

not_winter = season == "summer" ? "夏" : "夏 以外"
puts not_winter
