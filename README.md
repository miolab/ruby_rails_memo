# Ruby / Ruby on Rails メモ

## 概要

- __Ruby__ および __Ruby on Rails__ 開発に関する覚え書きを、メモとして残していきます。

  | | 説明 | 備考 |
  | :-- | :-- | :-- |
  | [ruby_notes](https://github.com/miolab/ruby_rails_memo/tree/master/ruby_notes) | Ruby本体のメソッドや作法などのmdメモやrbファイルなど置き場 | |
  | rails_notes | 整理中 | |



- 実行環境
  - macOS (10.14.6)
  - VSCode
  - Ruby (2.7.1)
  - Rails (5 / 6)
  - rbenv (1.1.2)
  - gem (3.1.2)

---

## 参考

- [Ruby org](https://www.ruby-lang.org/ja/)
- [RubyGems](https://rubygems.org/)
- [ruby-style-guide](https://github.com/rubocop-hq/ruby-style-guide)
  - [日本語版](https://github.com/fortissimo1997/ruby-style-guide/blob/japanese/README.ja.md)

---

## 開発環境構築

- __rbenv__ （[GitHub](https://github.com/rbenv/rbenv)）

  インストール

  ```terminal
  $ brew install rbenv

  $ rbenv init
  ```

  - メッセージ中の `eval "$(rbenv init -)”` を、`$ vim ~/.bash_profile` で追記要。

  - ターミナル再起動しておく。

  セットアップ結果確認

  ```terminal
  $ curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash

  Checking for `rbenv' in PATH: /usr/local/bin/rbenv
  Checking for rbenv shims in PATH: OK
  Checking `rbenv install' support: /usr/local/bin/rbenv-install (ruby-build 20200520)
  Counting installed Ruby versions: none
    There aren't any Ruby versions installed under `/Users/im/.rbenv/versions'.
    You can install Ruby versions like so: rbenv install 2.2.4
  Checking RubyGems settings: OK
  Auditing installed plugins: OK
  ```

- __Ruby__ 本体

  インストールできるバージョン確認

  ```terminal
  $ rbenv install -l
  2.5.8
  2.6.6
  2.7.1
  .
  .
  ```

  インストール & 使用バージョン指定

  ```terminal
  $ rbenv install 2.7.1

  $ rbenv rehash

  $rbenv versions
  // 環境内にあるバージョン確認

  $rbenv global 2.7.1
  // 使用バージョンを指定する

  $ ruby -v
  // 使用バージョン確認
  ```

---


---

# （補記）AWS `Cloud9` による開発環境構築

- 実行環境
  - Ruby 2.5 / 2.6
  - Rails 5 / 6
  - RVM 2.5
  - AWS Cloud9
    - EC2 (Amazon Linux / t2.micro)

## `Cloud9`と`GitHub`の連携
  - HTTPSで連携。
  - 手元PCローカルリポジトリ→リモートリポジトリと同じ感覚で、  
  Cloud9ローカルリポジトリ→リモートリポジトリ連携が可。
  （`git init` から）
