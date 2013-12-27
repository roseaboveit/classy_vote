class Answer < ActiveRecord::Base
  validates :votes, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :answer, presence: true
  validates :query_id, presence: true
end