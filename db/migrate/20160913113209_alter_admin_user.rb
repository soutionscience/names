class AlterAdminUser < ActiveRecord::Migration
  def up
  	add_column("admin_users","username", :string, :limit =>25)
  	change_column("admin_users", "email", :string, :limit=>100)
  	change_column("admin_users", "email", :string, :limit=>100)
  	change_column("admin_users", "password", :string, :limit=>40)
  	change_column("admin_users", "first_name", :string, :limit=>40)
  	change_column("admin_users", "second_name", :string, :limit=>40)

  end
  def down
  	change_column("admin_users", "second_name", :string)
  	change_column("admin_users", "first_name", :string)
  	change_column("admin_users", "password", :string)
  		change_column("admin_users", "email", :string)
  		change_column("admin_users", "email", :string)
    remove_column("admin_users","username", :string, :limit =>25)
  	
  
  	
  	
  end
end
