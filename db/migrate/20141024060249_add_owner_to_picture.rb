class AddOwnerToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :owner_id, :integer, { :default =>"none", null: false }
  end
end
