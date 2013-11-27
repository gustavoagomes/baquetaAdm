class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :name_tag
      t.date   :birthdate
      t.string :address
      t.string :neighborhood
      t.integer :phone_number
      t.integer :cell_phone
      t.string :is_active
       t.float  :monthly_payment
      t.text   :obs
      t.timestamps
    end
  end
end
