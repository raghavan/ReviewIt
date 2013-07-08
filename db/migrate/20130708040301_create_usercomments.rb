class CreateUsercomments < ActiveRecord::Migration
  def change
    create_table :usercomments do |t|
      t.string :comment
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end
