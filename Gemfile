# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.2"

gem "rails", "~> 6.1.1"

gem "active_hash" # yamlやcsvをActiveRecordっぽく使えるようにするライブラリ
gem "active_interaction", "~> 4.0" # 散らばるビジネスロジックをまとめる場所を提供するライブラリ
gem "activerecord-import" # BulkImportなど、一気にインポート処理をするライブラリ
gem "aws-sdk" # AWSのクライアントライブラリ
gem "bootsnap", ">= 1.4.4", require: false
gem "config" # 設定の置き場所
gem "factory_bot_rails" # シードデータを作成するUtil系ライブラリ
gem "faker" # 自然なデータを生成するUtil系ライブラリ
gem "fog-aws" # S3のクライアントライブラリ
gem "graphql" # GraphQLのAPIServerのフレームワーク
gem "jb" # APIサーバ用のビューテンプレートライブラリ
gem "jwt" # jwtトークン用のライブラリ
gem "mysql2", "~> 0.5"
gem "olive_branch" # キャメールケースをアンダースネークに変換するライブラリ
gem "puma", "~> 5.0"
gem "puma_worker_killer" # pumaが規定値以上のメモリにならないようにするライブラリ
gem "pundit" # 権限管理
gem "ransack" # 検索ツール
gem "ridgepole", ">= 0.9.0.beta" # DBのマイグレーションツール
gem "sentry-rails" # sentryにエラー情報を通知するためのライブラリ
gem "sentry-ruby" # 同上
gem "slack-notifier" # Slackに通知するためのライブラリ
gem "transaction_retry" # MySQLでロックがかかって更新に失敗したときに自動でリトライするライブラリ

group :test do
  gem "database_cleaner"
  gem "simplecov", require: false # rspecのカバレッジツール
end

group :development, :test do
  gem "debase", "~> 0.2.3.0" # Intellij ideaがデバッグで使うライブラリ
  gem "dotenv-rails" # .envファイルで環境変数を使うツール
  gem "rspec_junit_formatter" # rspecのテスト結果を整形するツール。主にCIでテストの結果を表示するさいに使う
  gem "rspec-mocks" # rspecのモック
  gem "rspec-rails" # Rubyのテストライブラリ
  gem "ruby-debug-ide" # Intellij ideaがデバッグで使うライブラリ
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "active_record_query_trace" # ActiveRecordでクエリの実行結果を表示するライブラリ
  gem "annotate" # モデルに属性情報のコメントを記述してくれるライブラリ
  gem "graphql-docs" # GraphQLようのAPIドキュメントを生成するライブラリ
  gem "listen", "~> 3.3"
  gem "memory_profiler"
  gem "rubocop", require: false
  gem "rubocop-inflector", require: false
  gem "rubocop-packaging", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "spring"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
