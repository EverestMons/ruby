class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :host
      t.string :name
      t.date :datetime
      t.string :city
      t.string :state
      t.timestamps
    end
  end
end
