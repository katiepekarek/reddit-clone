class User<ActiveRecord::Base

  has_secure_password

  has_many :comments
  has_many :posts, through: :comments
  has_one :owner
  has_one :post, through: :owner


end
