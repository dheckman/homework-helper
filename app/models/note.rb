class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :problem
  
  validates :text, presence: true
  # validates :user, presence: true
 #  validates :problem, presence: true
  
end
