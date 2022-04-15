class CreateKojiraseResults < ActiveRecord::Migration[6.1]
  def change
    create_table :kojirase_results do |t|
      t.integer "level", null: false
      t.string "name", null: false
      t.string "description", null: false
      t.string "advice", null: false

      t.timestamps
    end
  end
end
