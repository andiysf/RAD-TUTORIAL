class Micropost < ApplicationRecord
    belongs_to :user
    V = ["1621", "670", "1536", "100", "450"]
    T = ['News', 'V.R', 'RMIT', 'Game', 'Rails', 'GO', 'Joke', 'Reat', 'Vue', 'Node', 'IOS', 'AWS', 'A.I.', 'Other']
    default_scope -> { order(created_at: :desc) }
    validates :user_id, presence: true
    validates :content, presence: true, length: { maximum: 140 }
    validates :title, presence: true, length: { minimum: 1, maximum: 50}
    validates :topic, presence: true, inclusion: { in: T }
    validates :view, presence: true,  inclusion: { in: V }

    self.per_page = 8
    
  end