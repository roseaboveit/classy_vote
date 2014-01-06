class QueryUser < ActiveRecord::Base
  validates :query_id, presence: true
  validates :user_id, presence: true
  belongs_to :user
  belongs_to :query
end