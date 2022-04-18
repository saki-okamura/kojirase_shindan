# frozen_string_literal: true

class CreateFollowerSayings < ActiveRecord::Migration[6.1]
  def change
    create_table :follower_sayings do |t|
      t.references :kojirase_result, null: false, foreign_key: true
      t.integer 'level', null: false
      t.string 'message', null: false

      t.timestamps
    end
  end
end
