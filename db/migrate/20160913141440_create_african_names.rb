class CreateAfricanNames < ActiveRecord::Migration
  def up
    create_table :african_names do |t|
      t.string :name
      t.string :meaning
      t.references :attribute, index: true, foreign_key: true

      t.timestamps null: false
    end
    def down
    	drop_table :african_names
    end
  end
end
