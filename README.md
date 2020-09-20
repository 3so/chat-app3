# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Associations

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages

## room_users テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| room_id | references | null: false, foreign_key: true |

### Associations

- belongs_to :user
- belongs_to :room

## messages テーブル

| Column  | Type      | Options                        |
| ------- | --------- | ------------------------------ |
| content | string    |                                |
| user    | reference | null: false, foreign_key: true |
| room    | reference | null: false, foreign_key: true |

### Associations

- belongs_to :user
- belongs_to :room