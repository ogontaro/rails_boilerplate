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
`rails g rspec:install` を実行
- supportディレクトリを有効化
- rakeタスクをテストできるようにspec/support/task.rbを追加

## annotate
`rails g annotate:install` を実行

## rubocop
.rubocop.ymlのベースはrailsプロジェクトのやつ
https://github.com/rails/rails/blob/master/.rubocop.yml

ただし、下記修正を加えている
- rubyのバージョン
- railsのバージョン
- rubocop-rspecを利用するように修正
- NewCops: enable 
- Bundler/OrderedGems を有効化

## dotenv
- .env.exampleを追加
- `config/application.rb` をdotenvを読み込むように設定した

## config
`bundle exec rails g config:install` を実行済み

## sentry
- .env.example `SENTRY_DSN='your_api_key'` を追加
- `config/initializer/sentry.rb` を追加
