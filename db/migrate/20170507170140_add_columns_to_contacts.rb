class AddColumnsToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :name, :string
    add_column :contacts, :email, :string
    add_column :contacts, :phone, :string
    add_column :contacts, :uni, :string
    add_column :contacts, :groupsize, :string
    add_column :contacts, :text, :comments
    add_column :contacts, :timestamps, :string
  end
end
