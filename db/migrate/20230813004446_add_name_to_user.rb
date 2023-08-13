class AddNameToUser < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.string :name, null: false
    end
  end
end
