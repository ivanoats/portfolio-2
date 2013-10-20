class User < ActiveRecord::Base
  attr_accessible :role, :published, :email, :password, :password_confirmation, :remember_me

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :title, :body
  has_many :posts, foreign_key: "author_id"

    def author?
    role == 'author'
  end

  def editor?
    role == 'editor'
  end

end
