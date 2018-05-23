class User < ActiveRecord::Base
  # resourcify
  # rolify :before_add => :before_add_method

  #   def before_add_method(role)
  #     # do something before it gets added
  #   end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :comments  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
