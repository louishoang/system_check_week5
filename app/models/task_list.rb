class TaskList < ActiveRecord::Base
  has_many :user_task_associations
  has_many :task_lists_tasks_associations
  has_many :users, through: :user_task_associations
  has_many :tasks,  through: :task_lists_tasks_associations

  validates :name, presence: true
end
