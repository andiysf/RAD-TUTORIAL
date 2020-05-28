class CreateMicroposts < ActiveRecord::Migration[5.1]
  def change
    create_table :microposts do |t|
      t.text :title
      t.text :content
      t.references :user

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
end
