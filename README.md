## menbersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|intger|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- has_many :users


## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
|message_id|integer|null: false, foreign_key: true|

### Association
- has_many :menbers
- has_many :messages 


## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|body|text||
|image|string||

### Association
- belongs_to :group


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|id|intenger|null: false|
|message_id|intenger|null: false, foreign_key: true|
|group_id|intenger|null: false, foreign_key: true|

### Association
- has_many :messages
- has_many :groups

