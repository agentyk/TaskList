class CreateSubtasks < ActiveRecord::Migration[6.0]
  def change
    create_table :subtasks do |t|
      t.string :user_story
      t.float :user_point
      t.string :status
      t.belongs_to :task
      t.timestamps
    end

    add_column :tasks, :tester, :string
    Task.all.each do |task|
      task.update(tester: 'Yukai')
    end
  end
end
