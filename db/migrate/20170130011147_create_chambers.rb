class CreateChambers < ActiveRecord::Migration[5.0]
  def change
    create_table :chambers do |t|
      t.string :name

      t.timestamps
    end
  end
end
