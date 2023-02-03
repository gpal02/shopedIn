# frozen_string_literal: true

class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :gstin_number
      t.string :company_address
      t.string :company_contact
      t.text :company_description

      t.timestamps
    end
  end
end
