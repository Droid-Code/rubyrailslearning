class CreateAudiences < ActiveRecord::Migration[6.0]
  def self.up
		create_table :audiences do |t|
			t.column :name, :string
		end
		Audience.create :name=> "Kid"
		Audience.create :name=> "Adult"
  end

	def self.down
		drop_table :audiences
	end
end
