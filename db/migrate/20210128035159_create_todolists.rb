class CreateTodolists < ActiveRecord::Migration[6.1]
  def change
    create_table :todolists do |t|
      t.string :category
      t.integer :user_id
    end
  end
end
