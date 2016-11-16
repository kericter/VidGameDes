/// scr_movement
// Check for movment
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
canshoot = keyboard_check_pressed(vk_space);
// Movment
vx = (right - left) * player_speed;
vy = (down - up) * player_speed;

x += vx;
y += vy;
// Collison with room
x = min(x,room_width);
x = max(x,0);
y = min(y,room_height);
y = max(y,0)
// sprite movment
if (!left || !right) image_index = 2;
if (left) {
    image_index = 1;
    alarm[0] = room_speed/5;
    image_index = 0;
}
if (right) {
    image_index = 3;
    alarm[0] = room_speed/5;
    image_index = 4;
}

// Shooting
if keyboard_check_pressed(vk_space) {
    alarm[1] = room_speed/6;
    instance_create(x+25, y-20, obj_bullet);
    instance_create(x-25, y-20, obj_bullet);
}
