class ChangeDataTypeForUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :user, :bio, :text
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
