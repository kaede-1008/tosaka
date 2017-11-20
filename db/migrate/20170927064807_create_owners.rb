class CreateOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.integer :capacity
      t.text :news
      t.string :owner
      t.integer :owner_id

      t.timestamps
    end
  end
end
