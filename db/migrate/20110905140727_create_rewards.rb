class CreateRewards < ActiveRecord::Migration
  def self.up
    create_table :rewards do |t|
      t.integer :appeal_id
      t.decimal :amount, :precision => 16, :scale => 2, :default => 0.0
      t.integer :limit
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :rewards
  end
end
