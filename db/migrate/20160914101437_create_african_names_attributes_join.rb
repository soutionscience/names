class CreateAfricanNamesAttributesJoin < ActiveRecord::Migration
  def up
    create_table :african_names_attributes, :id=> false do |t|
    	t.integer "african_name_id"
    	t.integer "attribute_id"
    end
    #add_index :african_names_attributes, ["african_name_id", "attribute_id"]
    def down
    	drop_table :african_names_attributes
    end
  end

end
