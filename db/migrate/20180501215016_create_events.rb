class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.references :registered_application, foreign_key: true

      t.timestamps
    end
  end
end