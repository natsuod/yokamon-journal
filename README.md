# DB設計

## Usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :news
- has_many :events


## Newsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|body|text|null: false|
|image|string||
|user_id|integer|foreign_key: true|

### Association
- belongs_to :user


## Eventsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|time|string|null: false|
|date|string|null: false|
|body|text|null: false|
|image|string||
|host|string|null: false|
|place|string|null: false|
|price|string|null: false|
|user_id|integer||

### Association
- belongs_to :user

