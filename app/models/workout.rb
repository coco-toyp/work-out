class Workout < ApplicationRecord
  belongs_to :user


  with_options presence: true do
    validates :event
    validates :weight
    validates :rep
    validates :date
  end
end
