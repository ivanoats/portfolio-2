class Post < ActiveRecord::Base
  attr_accessible :content, :title, :published
  validates_presence_of :title, :content
  belongs_to :author, class_name: "User"

  validates :title, presence: true
  validates :url, presence: true
  validates :description, presence: true


  def publish!
    published = true
    save!
  end
end
