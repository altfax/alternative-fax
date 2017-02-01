class CreateOfficials < ActiveRecord::Migration[5.0]
  def change
    create_table :officials do |t|
        t.string :first_name
        t.string :last_name
        t.string :full_name
        t.datetime :birthday
        t.string :gender
        t.string :religion
        t.string :bioguide_id

        t.timestamps
    end
  end
end
