class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :virtue
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
