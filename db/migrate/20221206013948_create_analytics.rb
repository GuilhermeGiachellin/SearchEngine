class CreateAnalytics < ActiveRecord::Migration[7.0]
  def change
    create_table :analytics do |t|
      t.string :data
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
