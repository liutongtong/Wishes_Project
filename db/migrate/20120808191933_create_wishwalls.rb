class CreateWishwalls < ActiveRecord::Migration
  def change
    create_table :wishwalls do |t|
      t.string :wish

      t.timestamps
    end
  end
end
