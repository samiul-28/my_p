class CreateCommnets < ActiveRecord::Migration[7.1]
  def change
    create_table :commnets do |t|
      t.string :commneter
      t.text :body
      t.references :doc, null: false, foreign_key: true

      t.timestamps
    end
  end
end
