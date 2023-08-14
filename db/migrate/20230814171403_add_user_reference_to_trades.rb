class AddUserReferenceToTrades < ActiveRecord::Migration[7.0]
  def change
    change_table :trades do |t|
      t.references :user, null: false, foreign_key: true
    end
  end
end
