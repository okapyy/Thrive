# README

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

## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|description|text|
|email|string|null: false, unique: true|
|password|password|null: false|
|birthday|date|null: false|
|is_deleted|boolean|default: 0|

### Association
- has_many :items
- has_many :purchases
- has_one :address

## Addressテーブル
|Column|Type|Options|
|------|----|-------|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|postal_code|string|null: false|
|prefecture_id|integer|null: false|
|city|string|null: false|
|address|string|null: false|
|building|string|
|tel|string|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user

## Itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|description|text|null: false|
|brand|string|
|size_id|string|
|condition_id|string|null: false|
|delivery_fee_id|integer|null: false|
|delivery_day_id|integer|null: false|
|delivery_from_id|integer|null: false|
|price|integer|null: false|
|is_deleted|boolean|default: 0|
|user_id|reference|null: false, foreign_key: true|
|category_id|reference|foreign_key true|
|buyer_id|integer|default: 0|

### Association
- belongs_to :user
- has_one :purchase
- belongs_to :category
- has_many :item_images

## item-imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|reference|foreign_key: true|
|image|text|null: false|

### Association
- belongs_to :item

## categoryテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|
|ancestry|string|

### Association
- has_many :items
- has_ancestry

# 実装検討中
## purchasesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|reference|foreign_key: true|
|user_id|reference|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item

## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|reference|foreign_key: true|
|customer_id|string|null: false|
|card_id|string|null: false|

### Association
- belongs_to :user

# 未実装
## destinationsテーブル
|Column|Type|Options|
|--------|----|--------|
|postal_code|string|null: false|
|prefectures|string|null: false|
|city|string|null: false|
|address|string|null: false|
|building|string|
|user_id|reference|foreign_key true|

### Association
- belongs_to :user