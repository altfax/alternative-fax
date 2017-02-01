class CreateIdentifiers < ActiveRecord::Migration[5.0]
  def change
    create_table :identifiers do |t|
        t.string :bioguide
        t.string :thomas
        t.string :lis
        t.string :govtrack
        t.string :opensecrets
        t.string :votesmart
        t.string :cspan
        t.string :fec1
        t.string :fec2
        t.string :wikipedia
        t.string :house_history
        t.string :ballotpedia
        t.string :maplight
        t.string :icpsr
        t.string :wikidata
        t.string :google_entity_id

        t.belongs_to :official

        t.timestamps
    end
  end
end
