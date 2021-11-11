class RemoveColorFromStickies < ActiveRecord::Migration[6.1]
  def change
    remove_column :stickies, :color, :integer
  end
end
