# * 関数（function）
# ################

# 引数あり
def hello_world
  puts "hello, world."
end

hello_world


# 引数なし
# / returnは不要で、最後に評価された値が戻り値となる。
def add_num(a, b)
  a + b
end

puts add_num(1, 2)


# キーワード引数
# / 初期値がある。（引数のラベルを指定）
def fn_greet(name = "Nobody")
  puts "Hi, #{name}!"
end

fn_greet

fn_greet("im")


# キーワード引数で、引数を複数指定
def fn_thanks(name: "Nobody", exec: false)
  puts "Thx, #{name}!" if exec
end

fn_thanks  # 実行なし

fn_thanks(name: "mimimi", exec: true)  # Thx, mimimi!

fn_thanks(exec: true, name: "mimimi")  # 引数の書き順は順不同（Thx, mimimi!）


# ################

# 可変長引数
# / 関数呼び出し時に「複数の引数」がある際、「コレクション形式」にまとめた上で引数を返す

# "*"は、配列の形式に引数をまとめる
def add(*vals)
  puts vals.inject { |sum, n| sum + n }
end

add(1, 2, 3)  # 6


# "**"は、ハッシュの形式に引数をまとめる
def show(**key_val)
  puts key_val
end

show(k1: :hoge, k2: :moge, k3: :fuga)  # {:k1=>:hoge, :k2=>:moge, :k3=>:fuga}
