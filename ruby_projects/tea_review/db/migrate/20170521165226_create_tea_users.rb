class CreateTeaUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :tea_users do |t|
      t.references :user, foreign_key: true
      t.references :tea, foreign_key: true
      t.integer :rating 
      t.timestamps
    end
  end
end
