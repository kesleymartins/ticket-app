class CreateTrades < ActiveRecord::Migration[7.0]
  def change
    create_table :trades do |t|
      t.string :have, null: false
      t.string :wanted, null: false
      t.string :place, null: false
      t.string :status, null: false
      
      t.timestamps
    end
  end
end
