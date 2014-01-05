class Query < ActiveRecord::Base
  validates :question, presence: true
  validates :user_id, presence: true
  belongs_to :user
  # has_many :users through :query_users
end