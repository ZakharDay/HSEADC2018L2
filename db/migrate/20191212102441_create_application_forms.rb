class CreateApplicationForms < ActiveRecord::Migration[6.0]
  def change
    create_table :application_forms do |t|
      t.string :name
      t.text :about
      t.string :email
      t.string :phone
      t.string :project_title
      t.text :project_description
      t.integer :age
      t.integer :post_id

      t.timestamps
    end
  end
end
