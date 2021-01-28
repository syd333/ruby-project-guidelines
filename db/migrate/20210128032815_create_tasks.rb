class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.datetime :date
      t.integer :user_id
      t.integer :list_id
    end
  end
end
