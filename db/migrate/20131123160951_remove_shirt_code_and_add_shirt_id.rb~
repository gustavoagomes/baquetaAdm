class RemoveShirtCodeAndAddShirtId < ActiveRecord::Migration
  def up
    remove_column :users, :shirt_type_code
    remove_column :users, :shirt_size_code
    add_column :users, :shirt_type_id, :integer
    add_column :users, :shirt_size_id, :integer
  end

  def down
  end
end
