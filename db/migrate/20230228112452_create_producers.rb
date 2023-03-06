class CreateProducers < ActiveRecord::Migration[6.1]
  def change
    create_table :producers do |t|
      t.string :producer_name
      t.string :song_name
    end
  end
end
