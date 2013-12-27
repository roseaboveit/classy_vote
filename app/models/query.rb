class Query < ActiveRecord::Base
  validates :question, presence: true
  validates :user_id, presence: true
end