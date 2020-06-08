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


puts "################"


# Yeild
# ########

# yeild 単独
def yeild_sample
  yield(1, 2, 3)
end

puts yeild_sample { |a, b, c| a + b + c }


# proc と組み合わせ
def yeild_proc(&proc)
  proc.call(4, 5, 6)
end

puts yeild_proc { |a, b, c| a + b + c }


# block を渡す
def yeild_block
  if block_given?
    yield
  else
    puts "NOT given block."
  end
end

yeild_block { puts "given block." }

yeild_block
