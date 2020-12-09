# README

# テーブル設計

## users テーブル

| Column          | Type      | Options     |
| --------        | ------    | ----------- |
| name            | string    | null: false |
| email           | string    | null: false |
| password        | string    | null: false |
| height          | integar   | null: false |
| weight          | integar   | null: false |
| goal_weight     | integar   | null: false |

### Association

- has_many :workouts
- has_many :meals