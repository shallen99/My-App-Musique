class AddProducerIdToProducers < ActiveRecord::Migration[6.1]
  def change
    add_column :producers, :producers_id, :integer
  end
end
