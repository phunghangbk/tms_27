class Task < ActiveRecord::Base
  belongs_to :subject
  has_many :users, through: :user_tasks
  has_many :user_tasks, dependent: :destroy
  
  validates :name, presence: true, length: {maximum: Settings.user.maximum}
  validates :description, presence: true
end
