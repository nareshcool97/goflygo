class CreatePlanes < ActiveRecord::Migration[6.1]
  def change
    create_table :planes do |t|
      t.string :type
      t.string :name
      t.string :model

      t.timestamps
    end

    create_table :planes_seat_configs, id: false do |t|
      t.belongs_to :plane
      t.belongs_to :seat_config
    end
  end
end
