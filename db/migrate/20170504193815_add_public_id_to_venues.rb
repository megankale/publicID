class AddPublicIdToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :publicID, :string
  end
end
