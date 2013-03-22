class CreateWpTermRelationships < ActiveRecord::Migration
  def change
    create_table :wp_term_relationships do |t|
      t.integer :object_id
      t.integer :term_taxonomy_id
      t.integer :term_order

      t.timestamps
    end
  end
end
