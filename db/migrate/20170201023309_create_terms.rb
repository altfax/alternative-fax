class CreateTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :terms do |t|
        t.string :term_type
        t.datetime :start
        t.datetime :end
        t.string :state
        t.integer :district
        t.string :party
        t.string :term_class
        t.string :url
        t.string :address
        t.string :phone
        t.string :fax
        t.string :contact_form
        t.string :office
        t.string :state_rank
        t.string :rss_url
        
        t.belongs_to :official

        t.timestamps
    end
  end
end
