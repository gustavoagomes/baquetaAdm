class User < ActiveRecord::Base
   
  attr_accessible :name, :name_tag, :email, :birthdate, :address, :neighborhood, :phone_number,
                  :cell_phone, :is_active, :monthly_payment, :obs, :shirt_type_id, :shirt_size_id,
		              :instrument_id, :branch_id

  validates_presence_of :name, :name_tag, :email, :shirt_type_id, :shirt_size_id, :instrument_id, :branch_id
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i 
                      
   belongs_to :shirt_size
   belongs_to :shirt_type
   belongs_to :instrument
   belongs_to :branch  


  def self.to_csv(options = {})
    #self.order(:branch_id, :shirt_type_id, :shirt_size_id, :instrument_id, :name)
    CSV.generate(options) do |csv|
      #csv << column_names
      csv << ["Nome", "Nome no Cracha", "Instrumento", "Tipo de Camisa", "Tamanho da Camisa", "Unidade", "Email", "Ativo"]
      all.each do |user|
        #csv << user.attributes.values_at(name) + user.attributes.values_at(instrument.name)
        #csv << user.attributes.values_at(*column_names)
        csv << [user.name, user.name_tag, user.instrument.name, user.shirt_type.name, user.shirt_size.name, user.branch.name, user.email, user.is_active]
      end
    end
  end

end
