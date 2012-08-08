class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :mywish

      t.timestamps
    end
  end
end
