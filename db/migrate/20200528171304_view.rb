class View < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :view, :string
  end
end
