# README

# テーブル設計

## users テーブル

| Column          | Type      | Options     |
| --------        | ------    | ----------- |
| name            | string    | null: false |
| email           | string    | null: false |
| password        | string    | null: false |
| height          | integar   |             |
| weight          | integar   |             |
| goal_weight     | integar   |             |

### Association

- has_many :workouts
- has_many :meals

## workouts テーブル

| Column          | Type      | Options     |
| --------        | ------    | ----------- |
| event           | string    | null: false |
| weight          | integar   | null: false |
| rep             | string    | null: false |


### Association

- belongs_to :user
