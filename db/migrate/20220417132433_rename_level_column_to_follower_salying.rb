# frozen_string_literal: true

class RenameLevelColumnToFollowerSalying < ActiveRecord::Migration[6.1]
  def change
    rename_column :follower_sayings, :level, :follower_point
  end
end
