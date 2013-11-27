class CreateShirtTypes < ActiveRecord::Migration
  def change
    create_table :shirt_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
