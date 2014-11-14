class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :email
      t.string :title
      t.text :body
      t.boolean :resolved, default: false

      t.timestamps
    end

    add_index :tickets, :name
    add_index :tickets, :email

  end
end
