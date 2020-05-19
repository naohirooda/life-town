# README
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index: true|
|email|string|null: false, unique: true|
|password|stirng|null: false|
|facebook|text|
|twitter|text|
|instagram|text|
### Association
- has_many :comments
- has_mamny :spot
- has_many :good

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|spot_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :spot

## spotsテーブル
|Column|Type|Options|
|------|----|-------|
|type|string|null: false|
|name|string|null: false|
|url||text|
|comment|text|null: false|
### Association
- has_many :comment
- has_many :good
- belongs_to :user

## goodテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|spot_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :spot

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
