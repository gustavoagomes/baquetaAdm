class AlterPhoneIntToStringToUser < ActiveRecord::Migration
  def up
    remove_column :users, :cell_phone
    remove_column :users, :phone_number
    add_column :users, :cell_phone, :string
    add_column :users, :phone_number, :string
  end

  def down
  end
end
