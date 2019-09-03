class CreateConsumers < ActiveRecord::Migration[5.2]
  def change
    create_table :consumers do |t|
      t.integer    :age, null: false
      t.string     :job, null: false
      t.string     :phone_num, null: false
      t.text       :text
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
