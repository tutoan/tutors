class AddPhoneNumberToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :phone_number, :string
  end
end
