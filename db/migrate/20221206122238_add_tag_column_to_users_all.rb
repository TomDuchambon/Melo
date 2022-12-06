class AddTagColumnToUsersAll < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :tag, :string
  end
end
