class CreateWelcomes < ActiveRecord::Migration[5.1]
  def change
    create_table :welcomes do |t|
      t.string :name
      t.string :check_in
      t.string :check_out
      t.string :souvenir
      t.integer :house_id

      t.timestamps
    end
  end
end
