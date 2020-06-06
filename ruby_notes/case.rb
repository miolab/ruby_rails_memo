# case
#   case : 式の対象となるオブジェクトや式
#   when : 条件わけ

animal = "cat"

judge_animal =  case animal
                  when "dog"
                    "Inu"
                  when "cat"
                    "Neko"
                  else
                    "Not found."
                end

puts judge_animal

puts "################"


food = "curry"

judge_food =  case food
                when "pasta", "curry", "salad"
                  "West style"
                when "sushi", "tenpura", "natto"
                  "Japanese style"
                else
                  "others"
              end

puts judge_food

puts "################"


# Rangeの併用

score = 100

judge_score = case score
                when 81..100
                  :excelent
                when 61..80
                  :good
                else
                  :caution
                end

puts judge_score
