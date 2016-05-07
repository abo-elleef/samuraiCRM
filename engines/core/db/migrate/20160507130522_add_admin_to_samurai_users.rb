class AddAdminToSamuraiUsers < ActiveRecord::Migration
  def change
    add_column :samurai_users, :admin, :boolean, default: false
  end
end
