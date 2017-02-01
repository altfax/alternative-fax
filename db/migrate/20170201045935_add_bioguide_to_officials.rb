class AddBioguideToOfficials < ActiveRecord::Migration[5.0]
  def change
      add_column :officials, :bioguide_id, :string, index: true
  end
end
