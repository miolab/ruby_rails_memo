# Proc
# ########

# proc
proc_test = Proc.new { puts "Hello" }
proc_test.call

# 変数を併用
name = :im
proc_name = Proc.new { puts "Hi, #{name}!"}
proc_name.call

name = :mimimi
proc_name.call
