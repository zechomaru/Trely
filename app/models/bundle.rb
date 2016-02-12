class Bundle < ActiveRecord::Base
	has_many :services
  belongs_to :page
	
end
