class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :attitude
      t.string :fav_meal

      t.timestamps
    end
  end
end
