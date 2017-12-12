class CreateHeatsheets < ActiveRecord::Migration[5.1]
  def change
    create_table :heatsheets do |t|
      t.string :school_club
      t.string :last_name
      t.string :first_name
      t.float :entry_mark

      t.timestamps
    end
  end
end
