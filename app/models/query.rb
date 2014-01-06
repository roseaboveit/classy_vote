class Query < ActiveRecord::Base
  validates :question, presence: true
  validates :user_id, presence: true
  belongs_to :user
  has_many :query_users
  has_many :answered_users, :class_name => "User", :foreign_key => "user_id", through: :query_users, :source => :user
end