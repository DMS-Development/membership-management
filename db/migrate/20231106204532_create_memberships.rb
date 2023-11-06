class CreateMemberships < ActiveRecord::Migration[7.1]
  def change
    create_table :memberships do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :is_active
      t.references :user, null: false, foreign_key: true
      t.references :membership_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
