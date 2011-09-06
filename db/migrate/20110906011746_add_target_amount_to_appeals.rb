class AddTargetAmountToAppeals < ActiveRecord::Migration
  def self.up
    add_column :appeals, :target_amount, :decimal, :precision => 16, :scale => 2, :default => 0.0
  end

  def self.down
    remove_column :appeals, :target_amount
  end
end
