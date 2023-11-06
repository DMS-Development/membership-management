class CreateMembershipTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :membership_types do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.decimal :price
      t.boolean :is_auto_renew

      t.timestamps
    end
  end
end
