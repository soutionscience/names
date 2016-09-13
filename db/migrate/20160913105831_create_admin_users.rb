class CreateAdminUsers < ActiveRecord::Migration
  def up
    create_table :admin_users do |t|
      t.string :first_name
      t.string :second_name
      t.string :password
      t.string :email

      t.timestamps 
    end
    def down
    	drop_table :admin_users
    end
  end
end
