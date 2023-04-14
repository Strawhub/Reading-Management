# README

## 概略
Reading Managementは、読書管理を行うためのWebアプリケーションです。

## 特徴
本アプリはRuby on Railsメインで開発しています。現在は、Google Books APIsを利用して本を検索し、検索した本をクリックすることでタイトルフォームに自動入力されます。これは、本の名前を全て入力する面倒さと本のタイトル入力ミスを減らすために実装しました。追加した本には、ページとコメントをつけることができ、どのページで何を感じたかメモすることができます。


## 使用方法
```Terminal
$ git clone https://github.com/Strawhub/Reading-Management/  
$ cd Reading-Management   
$ bundle install --without production   
$ rails db:create
$ rails db:migrate
$ rails s
>> http://localhost:3000
```


## 環境
Ruby  ruby 3.1.2<p>
Rails 7.0.4.3<p>
PostgreSQL 14.7


## 使用技術
### コード管理
> Gitを使ってコードを管理しています。

### WebAPIからデータを取得
> Google Books APIsにリクエストを送信して書籍検索を行なっています

### デプロイ環境
> renderを使用しています

### データベース
> PostgreSQLを使用しています


## 作成者
田中 颯汰龍(TANAKA Sotaro)


## 今後の予定
- ユーザー追加機能の実装
- 本の管理場所を表示する
- 追加したユーザーの本に番号を割り振って共有できるようにする
- 読書進捗状況をページ数の割合で表示する
- 本の表紙を表示
