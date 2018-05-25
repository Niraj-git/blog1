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

  has_attached_file :media, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :media, content_type: /\Aimage\/.*\z/
  # before_create do
  #   self.status = "pending" if status.blank?
  # end
end
