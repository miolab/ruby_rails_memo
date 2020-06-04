# Pry

- [GitHub](https://github.com/pry/pry)

## セットアップ

```terminal
$ gem install pry
Fetching pry-0.13.1.gem
Fetching coderay-1.1.3.gem
Fetching method_source-1.0.0.gem
Successfully installed coderay-1.1.3
Successfully installed method_source-1.0.0
Successfully installed pry-0.13.1
invalid options: -SNw2
(invalid options are ignored)

$ pry -v
Pry version 0.13.1 on Ruby 2.7.1
```

## お試し

```ruby
$ pry

[1] pry(main)> puts "Hello, im"
Hello, im
=> nil
[2] pry(main)> class User
[2] pry(main)*   attr_accessor :name
[2] pry(main)* end
=> nil

[3] pry(main)> user = User.new
=> #<User:0x00007fe11c92f478>

[4] pry(main)> user.name = "hogehoge"
=> "hogehoge"

[5] pry(main)> user
=> #<User:0x00007fe11c92f478 @name="hogehoge">

[6] pry(main)>
```

