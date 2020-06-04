# Symbol型

```ruby:pry
[1] pry(main)> :im
=> :im

[2] pry(main)> :im.class
=> Symbol
```

---

- 内部は整数値。
- 一意の値を持つ。（`Elixir` でいうアトム）

```ruby:pry
[3] pry(main)> a = "test"
=> "test"
[4] pry(main)> b = "test"
=> "test"
[5] pry(main)> a.object_id
=> 200
[6] pry(main)> b.object_id
=> 220

[7] pry(main)> symbol_a = :test
=> :test
[8] pry(main)> symbol_b = :test
=> :test
[9] pry(main)> symbol_a.object_id
=> 382748
[10] pry(main)> symbol_b.object_id
=> 382748
```

- __ハッシュ__ は、キーを `Symbol` 型で持つ。

```ruby:pry
[11] pry(main)> { name: "im", id: 1 }
=> {:name=>"im", :id=>1}
```

