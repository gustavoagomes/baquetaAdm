class RemoveShirtCodeAndAddShirtId < ActiveRecord::Migration
  def up
    add_column :users, :shirt_type_id, :integer
    add_column :users, :shirt_size_id, :integer
  end

  def down
  end
end
