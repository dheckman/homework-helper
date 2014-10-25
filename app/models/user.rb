class User < ActiveRecord::Base
  has_many :notes
  has_many :problems

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: /\A[\w\-\.]+@[\w\-\.]+\Z/, message: "must be a valid email address" }

  validates :name, presence: true

  has_secure_password
  
  def to_s
    name
  end
end
