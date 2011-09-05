class AddSubtitleToAppeals < ActiveRecord::Migration
  def self.up
    add_column :appeals, :subtitle, :string
  end

  def self.down
    remove_column :appeals, :subtitle
  end
end
