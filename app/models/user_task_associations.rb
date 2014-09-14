class User_task_associations < ActiveRecord::Base
  belongs_to :task_list
  belongs_to :user

  validates :user, presence: true
  validates :task_list, presence: true
end
