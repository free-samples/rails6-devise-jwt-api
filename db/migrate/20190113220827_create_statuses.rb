class CreateStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :statuses do |t|
      t.belongs_to :status_type, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
