class CreateAfricanNames < ActiveRecord::Migration
  def change
    create_table :african_names do |t|
      t.string :name
      t.string :meaning
      t.references :attribute, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
