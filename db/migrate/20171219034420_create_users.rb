# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :cell_phone
      t.string :status
      t.integer :alteration_user_id
      t.string :address
      t.string :email
      t.string :password
      t.boolean :receive_email

      t.timestamps
    end
  end
end
