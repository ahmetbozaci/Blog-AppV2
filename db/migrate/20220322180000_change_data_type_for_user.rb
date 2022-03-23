class ChangeDataTypeForUser < ActiveRecord::Migration[7.0]
  def up
    change_column :users, :bio, :text
  end

  def down
    change_column :users, :bio, :string
  end
end
