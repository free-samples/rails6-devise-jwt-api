class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.belongs_to :status, foreign_key: true
      t.string :name,              null: false, default: ""
      t.string :description,       null: false, default: ""
      t.timestamps
    end
  end
end
