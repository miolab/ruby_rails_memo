# コメントの書き方いろいろ
puts "test"  # コメント


# * ヒアドキュメント

str1 = <<EOS
(<<EOS)
長い文章を
改行してコメント。
　先頭空白も、空白行も反映OK。

#{10 * 2}
EOS

puts str1
puts "########"

str2 = <<"EOS"
(<<"EOS")
　上記と同様。

#{10 * 2}
EOS

puts str2
puts "########"

str3 = <<'EOS'
(<<'EOS')
　シングルクォートでは埋め込み式が働かない。

#{10 * 2}
EOS

puts str3
puts "################"


# * 複数業コメント（以下方法は非推奨。全行「#」が推奨）
=begin
これはメモです
puts "hogehoge"
=end
