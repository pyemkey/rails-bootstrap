class Visitor < ActiveRecord::Base
	has_no_table
	column :favorite, :string
	column :comment, :string
	validates_presence_of :favorite

	IMAGE_LABELS = ["San Francsico", "Sydney", "Paris", "Berlin"]
end