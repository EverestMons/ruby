class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :post, foreign_key: true
      t.string :author
      t.text :message

      t.timestamps
    end
  end
end
