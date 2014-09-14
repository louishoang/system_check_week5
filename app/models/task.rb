class Task < ActiveRecord::Base
  has_many :task_lists, through: :task_lists_tasks_associations

  validates :name, presence: true
  validates :due_date, presence: true
end
