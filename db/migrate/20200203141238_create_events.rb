class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :start_time
      t.text :recurring
      t.integer :number
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
