class RenameRequestsToAppeals < ActiveRecord::Migration
  def self.up
    rename_table :requests, :appeals
  end

  def self.down
    rename_table :appeals, :requests
  end
end
