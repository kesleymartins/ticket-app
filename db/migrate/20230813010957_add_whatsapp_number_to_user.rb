class AddWhatsappNumberToUser < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.string :whatsapp_number, null: false
    end
  end
end
