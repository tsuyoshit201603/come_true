class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string      :name, null: false
      t.string      :url
      t.text        :text
      t.references  :consumer, foreign_key: true
      t.references  :business, foreign_key: true
      t.timestamps
    end
  end
end
