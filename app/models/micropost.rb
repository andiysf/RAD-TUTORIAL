class Micropost < ApplicationRecord
    belongs_to :user
    default_scope -> { order(created_at: :desc) }
    validates :user_id, presence: true
    validates :content, presence: true, length: { maximum: 140 }
    validates :title, presence: true, length: { minimum: 1, maximum: 10 }
    self.per_page = 12
end