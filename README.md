◆給与明細管理アプリ  備忘録  

◆開発環境構築手順
  1. docker-compose build
  2. docker-compose run --rm web rails db:create
  3. docker container exec -it `コンテナID`
  4. rails db:migrate

◆提供している機能  
　・ログイン機能          => devise  
　・管理者画面            => Active Admin  
　・ページネーション機能   => kaminari  
　・自動化テスト           => Rspec  
　・デバッグ機能           => pry-rails  

◆タスクリスト  
  ・メニュー画面  
  ・給与明細作成画面  
  ・給与明細照会画面  
  ・源泉徴収票作成画面  
  ・源泉徴収票照会画面  

◆試したいこと  
  ・ソルト化およびソルト値の管理  
  ・PDFダウンロード  
  ・Rubocop

◆命名規約  
  ・Array => `xxx_list`  
  ・Hash  => `xxx_map` もしくは `xxx_hash` もしくは `value_by_key`
  ・ActiveRecordオブジェクト => 複数存在する場合は末尾に`s`をつけた複数形