# README

# テーブル設計

## users テーブル

| Column          | Type      | Options     |
| --------        | ------    | ----------- |
| name            | string    | null: false |
| email           | string    | null: false |
| password        | string    | null: false |
| height          | integer   |             |
| weight          | integer   |             |
| goal_weight     | integer   |             |

### Association

- has_many :workouts
- has_many :meals

## workouts テーブル

| Column          | Type      | Options     |
| --------        | ------    | ----------- |
| event           | string    | null: false |
| weight          | integer   | null: false |
| rep             | integer   | null: false |
| date            | date      | null: false |


### Association

- belongs_to :user

## meals テーブル

| Column          | Type      | Options     |
| --------        | ------    | ----------- |
| datetime        | datetime  | null: false |
| food            | integer   | null: false |
| calor           | integer   | null: false |


### Association

- belongs_to :user
