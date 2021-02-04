class CreateEditUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :edit_users do |t|
      t.integer :user_id
      t.text :name
      t.string :image_id

      t.timestamps
    end
  end
end
