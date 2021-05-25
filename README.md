# アプリ名
にゃんこTweet

# 概要
猫の画像を投稿・閲覧できるWebアプリケーションです。<br>
投稿者が猫を見かけた位置情報とコメントを投稿出来ます。

# 製作背景
動物に癒されたいというニーズが高まっており、<br>
作者も猫の画像をインターネットで探すことがありました。<br>
他のサービスでは猫だけの画像を見たいときでも他の情報が混在してしまいます。<br>
そこで、猫の画像だけが集まったサービスが欲しいと感じた為です。

# DEMO
※完成イメージ<br>
[![Image from Gyazo](https://i.gyazo.com/e115b10e5800dcb0078d222a8a3568fe.png)](https://gyazo.com/e115b10e5800dcb0078d222a8a3568fe)

# 実装予定の内容
- ユーザー管理機能
- 画像投稿機能
- ツイート投稿機能
- 地図情報投稿機能
- コメント投稿機能

# DB設計
## usersテーブル
| Column              | Type     | Options                        |
| ------              | -------- | ------------------------------ |
| nickname            | string   | null: false                    |
| email               | string   | null: false, unique: true      |
| encrypted_password  | string   | null: false                    |
### Association
- has_many :tweets
- has_many :comments

## tweetsテーブル
| Column              | Type       | Options                        |
| ------              | --------   | ------------------------------ |
| text                | string     | null: false                    |
| user                | references | null: false, foreign_key: true |
### Association
- belongs_to : user
- has_many :comments

## commentsテーブル
| Column              | Type       | Options                        |
| ------              | --------   | ------------------------------ |
| text                | text       | null: false                    |
| user                | references | null: false, foreign_key: true |
### Association
- belongs_to : user
- belongs_to : tweet