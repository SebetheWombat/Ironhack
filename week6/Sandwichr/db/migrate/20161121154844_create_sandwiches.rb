class CreateSandwiches < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwiches do |t|
      t.string :name
      t.string :bread_type
      t.integer :total_calories, default: 0

      t.timestamps
    end
  end
end
