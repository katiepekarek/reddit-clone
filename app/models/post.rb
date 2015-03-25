class Post<ActiveRecord::Base
  has_many :comments
  has_many :users, through: :comments
  belongs_to :owner
  has_one :user, through: :owner
end
