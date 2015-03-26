class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :twitter
      t.string :facebook
      t.string :instagram
      t.string :vine

      t.timestamps
    end
  end
end
