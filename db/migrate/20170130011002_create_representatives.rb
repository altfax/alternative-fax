class CreateRepresentatives < ActiveRecord::Migration[5.0]
  def change
    create_table :representatives do |t|
      t.string :last_name
      t.string :first_name
      t.string :title
      t.string :state
      t.string :party
      t.string :district
      t.string :phone
      t.string :email
      t.string :fax
      t.belongs_to :chamber

      t.timestamps
    end
  end
end
