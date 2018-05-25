class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, :description, :presence => true
  validates :title, :length => { :minimum => 2}
  #validates :title, :uniqueness => true

  # validates :status, presence: true 
  
  before_save :default_values
  def default_values    
    self.status ||= 'pending'
  end
  # before_create do
  #   self.status = "pending" if status.blank?
  # end
end
