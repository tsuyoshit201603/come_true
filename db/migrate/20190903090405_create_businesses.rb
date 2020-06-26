class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string     :phone_num, null: false
      t.string     :capital
      t.string     :type, null: false
      t.string     :url
      t.text       :text
      t.references :business_user, foreign_key: true
      t.timestamps
    end
  end
end
