class CreateAttachments < ActiveRecord::Migration[6.0]
  def change
    create_table :attachments do |t|
      t.string :type
      t.text :url

      t.timestamps
    end
  end
end
