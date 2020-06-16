# Ruby / Ruby on Rails メモ

## 概要

- __Ruby__ および __Ruby on Rails__ 開発に関する覚え書きを、メモとして残していきます。

  | | 説明 | 備考 |
  | :-- | :-- | :-- |
  | [ruby_notes/](https://github.com/miolab/ruby_rails_memo/tree/master/ruby_notes) | Ruby本体のメソッドや作法などのmdメモやrbファイルなど置き場 | |
  | [rails_notes/](https://github.com/miolab/ruby_rails_memo/tree/master/rails_notes) | 整理中 | |



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

# [WIP] :closed_book: Ruby on Rails

- インストール

  所望のディレクトリ配下にいる状態で、

  ```ruby
  $ gem install rails
  ```

  - バージョン指定する場合は以下。（例：5系）

    ```ruby
    $ gem install rails -v 5.2.1 -N
    ```

    `-N`: ドキュメントを省略し、DL時間を短縮する

- セットアップ

  ```ruby
  $ rails new project_name
  ```

  - 上記は最新版Railsをセットアップ。

  - 明示的にバージョン指定する場合は以下。（例：5系）

    ```ruby
    $ rails _5.2.1_ new project_name
    ```

  - 確認

    ```terminal
    $ rails -v
    Rails 5.2.4.3
    ```

  ディレクトリ移動

  ```terminal
  $ cd project_name
  ```

- `Gemfile` 書き換え

  ```ruby
  .
  .
  # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
  gem 'rails', '5.2.4.3'  --> change
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.3.6'  --> change
  .
  .
  ```

  アップデート

  ```ruby
  $ bundle update
  ```

  データベース作成

  ```ruby
  $ rails db:create
  ```

- ブラウザで確認

  ```ruby
  $ rails s
  ```

  - [`http://localhost:3000/`](http://localhost:3000/) 起動

    <img width="582" alt="スクリーンショット" src="https://user-images.githubusercontent.com/33124627/84660630-16a13a00-af54-11ea-8bc6-f733191ecae2.png">

## Controller 作成

最低限 `Controller` があれば、ハローワールドはできる。

- Controller 用意

  ```ruby
  $ rails g controller users index
  ```

  - `rails g（generate） controller コントローラー名（複数形を推奨） コントローラークラス内に定義するメソッド名（=アクション）`

- `hello > app > controllers > concerns > users_controller.rb` を編集

  ```ruby
  class UsersController < ApplicationController
    def index
      render plain: "Hello, im."    --> add
    end
  end
  ```

  - plain = __平文のテキスト__

- `$ rails s` でブラウザ起動し、結果確認

  [http://localhost:3000/users/index](http://localhost:3000/users/index)

  <img width="179" alt="スクリーンショット" src="https://user-images.githubusercontent.com/33124627/84762809-3ee97100-b006-11ea-8713-c97246252118.png">













  .

  .

  .

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
