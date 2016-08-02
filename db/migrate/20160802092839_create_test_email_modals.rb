class CreateTestEmailModals < ActiveRecord::Migration
  def change
    create_table :test_email_modals do |t|
      t.string :title
      t.string :content
      t.string :slug

      t.timestamps null: false
    end
  end
end
