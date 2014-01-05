class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence: true
  # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation
  has_many :queries
  # has_many :queries through :query_users
end
