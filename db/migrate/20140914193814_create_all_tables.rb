class CreateAllTables < ActiveRecord::Migration
  def change
    create_table :users do |user|
      user.string :first_name
      user.string :last_name
      user.string :email, null: false

      user.timestamps
    end

    create_table :user_task_associations do |t|
      t.integer :user_id, null: false
      t.integer :task_list_id, null: false

      t.timestamps
    end

    create_table :task_lists do |list|
      list.string :name, null: false
      list.text :description
      list.integer

      list.timestamps
    end

    create_table :tasks do |task|
      task.string :name, null: false
      task.text :description
      task.date :due_date

      task.timestamps
    end

    create_table :tasks_list_tasks_associations do |t|
      t.integer :task_list_id, null: false
      t.integer :task_id, null: false

      t.timestamps
    end
  end
end
