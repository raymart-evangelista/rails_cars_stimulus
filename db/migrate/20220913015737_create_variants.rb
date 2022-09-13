class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.text :name
      t.float :price

      t.timestamps
    end
  end
end