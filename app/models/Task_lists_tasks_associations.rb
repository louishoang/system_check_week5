class Task_lists_tasks_associations < ActiveRecord::Base
  belongs_to :task_list
  belongs_to :task

  validates :task, presence: true
  validates :task_list, presence: true
end
