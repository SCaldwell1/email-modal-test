class CreateEmailModals < ActiveRecord::Migration
  def change
    create_table :email_modals do |t|

      t.timestamps null: false
    end
  end
end
