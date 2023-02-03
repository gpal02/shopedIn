# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.string :person_name
      t.string :delivery_contact
      t.string :delivery_state
      t.string :delivery_city
      t.string :delivery_address
      t.integer :delivery_pin_code

      t.timestamps
    end
  end
end
