///scr_move_state
scr_get_input();

if (dash_key) {
    script = scr_dash_state;
    alarm[0] = room_speed/6
}

// Get direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get the length
if (xaxis == 0 and yaxis == 0) {
    len = 0;
} else {
    len = spd;
}

// Get the hspd and the vspd 
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Vertical sprites
if (vspd > 0) {
    sprite_index = spr_player_down;
    image_speed = .2
} else if (vspd < 0) {
    sprite_index = spr_player_up;
    image_speed = .2
}

// Horisontal speed
if (hspd > 0) {
    sprite_index = spr_player_right;
    image_speed = .2
} else if (hspd < 0) {
    sprite_index = spr_player_left;
    image_speed = .2
}

if ((!left_key && !right_key) && (up_key && down_key)) {
    image_speed = 0;
    image_index = 0;
}
