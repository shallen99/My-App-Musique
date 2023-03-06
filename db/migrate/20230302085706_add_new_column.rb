class AddNewColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :artists, :producers_id, :integer
  end
end
