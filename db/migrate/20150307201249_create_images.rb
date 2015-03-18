class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :description
      t.binary :image

      t.timestamps null: false
    end
  end
end
