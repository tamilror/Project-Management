class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
	  t.string :title
      t.integer :user_id, :category_id
      t.timestamps null: false
    end
  end
end
