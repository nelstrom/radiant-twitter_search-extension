class CreateSearchTerms < ActiveRecord::Migration
  def self.up
    create_table :search_terms do |t|
      t.string :query
      t.datetime :queried_at

      t.timestamps
    end
  end

  def self.down
    drop_table :search_terms
  end
end
