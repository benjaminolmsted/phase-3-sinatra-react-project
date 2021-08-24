puts "🌱 Seeding spices..."

#User.destroy_all
Work.destroy_all

#u = User.create(email: "b@test.com", password: "hash")
#Seed your database here


def range (min, max)
    rand * (max-min) + min
end

5.times do |i|
    hash = {user: u, 
        z_start: rand(-5..0), z_end: rand(1..5), 
        x_start: rand(-5..0), x_end: rand(1..5), 
        y_start: rand(-5..0), y_end: rand(1..5),
        z_cube: rand(25..175), x_cube: rand(25..175), y_cube: rand(25..175),
        r_amount: range(0, 12.56), r_delay: range(0, 1.75), r_time: range(5, 30),
        xyz_scale: range(0, 3), xyz_scale_time: range(1, 10), xyz_scale_delay: range(0, 1.5),
        xyz_position: range(0, 100), xyz_position_time: range(1, 10), xyz_position_delay: range(0, 1.5),
        light_1: "0xFF0000", light_2: "0xFFFF00", light_3: "0x00FFFF", light_4: "0xFF00FF", light_5: "0x00FF00", light_6: "0x0000FF",
        x_camera_start: rand(0..600), y_camera_start: rand(0..600), z_camera_start: rand(0..600),
        x_camera_end: rand(0..600), y_camera_end: rand(0..600), z_camera_end: rand(0..600)
        }
    Work.create(hash)
end

puts "✅ Done seeding!"
