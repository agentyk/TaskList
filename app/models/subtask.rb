class Subtask < ApplicationRecord
    belongs_to :task

    validates :user_story, :user_points, :status, presence: true
end
