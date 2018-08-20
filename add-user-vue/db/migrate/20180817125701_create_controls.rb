class CreateControls < ActiveRecord::Migration[5.2]
  def change
    create_table :controls do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
