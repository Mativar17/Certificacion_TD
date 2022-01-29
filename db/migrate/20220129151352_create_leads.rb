class CreateLeads < ActiveRecord::Migration[6.1]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :status
      t.string :entered_by
      t.date :entry_date
      t.integer :conversations
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
