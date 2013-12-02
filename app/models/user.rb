class User < ActiveRecord::Base
   
  attr_accessible :name, :name_tag, :email, :birthdate, :address, :neighborhood, :phone_number,
                  :cell_phone, :is_active, :monthly_payment, :obs, :shirt_type_id, :shirt_size_id,
		  :instrument_id

  validates_presence_of :name, :name_tag, :email, :shirt_type_id, :shirt_size_id, :instrument_id
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i 
                      
   belongs_to :shirt_size
   belongs_to :shirt_type
   belongs_to :instrument  


end
