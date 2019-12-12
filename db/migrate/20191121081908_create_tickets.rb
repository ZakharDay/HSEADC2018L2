class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.text :body
      t.integer :reporter_id
      t.integer :doer_id

      t.timestamps
    end
  end
end
