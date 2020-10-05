class CreateCategories < ActiveRecord::Migration[6.0]
	def self.up
		create_table :categories do |t|
			t.column :name, :string
		end
		Category.create :name=> "Food"
		Category.create :name=> "Medicine"
	end

	def self.down
	  drop_table :categories
	end
end
