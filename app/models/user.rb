class User < ActiveRecord::Base
  has_many :task_lists, through: :user_task_associations
  has_many :user_task_associations

  validates :email, presence: true
  validates :first_name, presence: true, if: "last_name.nil?"
end
