class AddDojoIdColumnToNinja < ActiveRecord::Migration[5.1]
  def change
    add_reference :ninjas, :Dojo, foreign_key: true
  end
end
