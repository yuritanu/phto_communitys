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

***

## ■Photosテーブル(写真（タイトル付き）チャットつける）

|Column|Type|Options|
| -------- | -------- | -------- |
|image|string|null: false|
|name|string|null: false|
|category|references|null: false, index: true,
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :categorie
- has_many :comments

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
|photo_id|references|null: false,foreign_key: true|
### Association
- belongs_to :photo
- belongs_to :user
