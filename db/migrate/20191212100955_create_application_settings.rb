class CreateApplicationSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :application_settings do |t|
      t.integer :post_id
      t.boolean :name
      t.boolean :about
      t.boolean :email
      t.boolean :phone
      t.boolean :project_title
      t.boolean :project_description
      t.boolean :age

      t.timestamps
    end
  end
end
