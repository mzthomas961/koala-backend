class CreateStickies < ActiveRecord::Migration[6.1]
  def change
    create_table :stickies do |t|
      t.string :text
      t.integer :color

      t.timestamps
    end
  end
end
