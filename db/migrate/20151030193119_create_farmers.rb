class CreateFarmers < ActiveRecord::Migration
  def change
    create_table :farmers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :state
      t.float :size
      t.text :notes
      t.float :rental_rate

      t.timestamps null: false
    end
  end
end
