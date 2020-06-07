# 関数

# キーワード引数 / 初期値あり（引数のラベルを指定）
def fn_greet(name = "Nobody")
  puts "Hi, #{name}!"
end

fn_greet

fn_greet("im")


# キーワード引数 / 引数を複数指定
def fn_thanks(name: "Nobody", exec: false)
  puts "Thx, #{name}!" if exec
end

fn_thanks

fn_thanks(name: "mimimi", exec: true)

fn_thanks(exec: true, name: "mimimi")


# 可変長引数 / 関数呼び出し時に複数の引数がある際、コレクション形式にまとめた上で引数を返す
# "*"は配列の形式に引数をまとめる
def add(*vals)
  puts vals.inject { |sum, n| sum + n }
end

add(1, 2, 3)


# "**"はハッシュの形式に引数をにまとめる
def show(**key_val)
  puts key_val
end

show(k1: :hoge, k2: :moge, k3: :fuga)
