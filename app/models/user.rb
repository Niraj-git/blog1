class User < ActiveRecord::Base
  # resourcify
  rolify
  # rolify :before_add => :before_add_method

  #   def before_add_method(role)
  #     # do something before it gets added
  #   end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable  
 after_save :default_values
  def default_values
    byebug
    #self.add_role ||= 'user'
    self.add_role :user
  end

  has_many :posts
  has_many :comments  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
