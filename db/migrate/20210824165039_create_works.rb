class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.belongs_to :user, foreign_key: true
      t.integer :z_start
      t.integer :z_end
      t.integer :x_start
      t.integer :x_end
      t.integer :y_start
      t.integer :y_end
      t.integer :z_cube
      t.integer :x_cube
      t.integer :y_cube
      t.float :r_amount
      t.float :r_delay
      t.float :r_time
      t.float :xyz_scale_time
      t.float :xyz_scale
      t.float :xyz_scale_delay
      t.float :xyz_position_time
      t.float :xyz_position
      t.float :xyz_position_delay
      t.string :light_1
      t.string :light_2
      t.string :light_3
      t.string :light_4
      t.string :light_5
      t.string :light_6
      t.integer :x_camera_start
      t.integer :y_camera_start
      t.integer :z_camera_start
      t.integer :x_camera_end
      t.integer :y_camera_end
      t.integer :z_camera_end
    end
  end
end
