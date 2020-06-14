## ■Usersテーブル（ユーザー）

|Column|Type|Options|
| -------- | -------- | -------- |
|nickname|string|null: false|
|image|string|※アイコン用|
|email|string|null: false, unique: true, index: true|
|password|string|null: false, unique: true, index: true|
### Association
- has_many :comments
- has_many :Photos
- has_many :communities

***
## ■Communitysテーブル（コミュニティ（写真とチャットが投稿できる））
|Column|Type|Options|
| -------- | -------- | -------- |
|name|string|null: false|
|user_id|references|null: false, foreign_key: true|

### Association
- has_many :users
- has_many :comments
- has_many :photos
- belongs_to :categorie

***

## ■Photosテーブル(写真（タイトル付き）)

|Column|Type|Options|
| -------- | -------- | -------- |
|image|string|null: false|
|name|string|null: false|
|category|references|null: false, index: true,
|community_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :community
- belongs_to :user
- belongs_to :categorie

***

## ■Categoriesテーブル（写真のカテゴリー）
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|index: true|
### Association
- has_many :photos
- has_ancestry
***

## ■Commentsテーブル（コミュニティ でコメント投稿（チャット形式））

|Column|Type|Options|
| -------- | -------- | -------- |
|comment|text|null: false|
|user_id|references|null: false, foreign_key: true|
|community_id|references|foreign_key: true|
### Association
- belongs_to :community
- belongs_to :user

