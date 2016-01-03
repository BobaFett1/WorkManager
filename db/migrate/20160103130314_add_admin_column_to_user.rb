class AddAdminColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :IsAdmin, :boolean
  end
end
