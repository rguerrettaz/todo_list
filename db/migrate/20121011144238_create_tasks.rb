class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|

      t.integer :id
      t.string  :content
      t.timestamp :completed_at
      t.timestamp :deleted_at
      t.timestamps
    end
  end
end
