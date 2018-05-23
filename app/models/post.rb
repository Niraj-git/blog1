class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, :description, :presence => true
  validates :title, :length => { :minimum => 2}
  validates :title, :uniqueness => true
end
