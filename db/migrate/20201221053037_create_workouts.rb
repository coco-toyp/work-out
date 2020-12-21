class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string  :event,               null: false
      t.integer :weight               null: false
      t.integer :rep                  null: false
      t.date    :date                 null: false

      t.timestamps
    end
  end
end
