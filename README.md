# rails_boilerplate
Railsのboilerplate

# やったこと
## rails new
`bundle exec rails new --api --skip-test app`

# 利用する際に変更するところ
## docker-compose.yml
- コンテナ名をアプリに変更する
## config/dababase.yml
- データベース名を自身のプロジェクト名に変える

# 設定したところ
## DB
Host:db
User:root
PW:password
で動作するようにdatabase.ymlを修正
config/database.yml

## rspec

## rubocop
.rubocop.ymlのベースはrailsプロジェクトのやつ
https://github.com/rails/rails/blob/master/.rubocop.yml

ただし、下記修正を加えている
- rubyのバージョン
- railsのバージョン
- rubocop-rspecを利用するように修正
- NewCops: enable
