class RenameTypeInPlanes < ActiveRecord::Migration[6.1]
  def change
    rename_column :planes, :type, :plane_type
  end
end
