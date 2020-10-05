class CreateProducts < ActiveRecord::Migration[6.0]
  def self.up
    create_table :products do |t|
    	t.column :name, :string
    	t.column :price, :float
        t.column :category_id, :integer
        t.column :audience_id, :integer
        t.column :created_at, :timestamp
    end
  end
end
