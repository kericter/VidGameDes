/// scr_enemy
// enemy heatlh kill
if (hp <= 0) {
    sprite_index = spr_explosion;
    scr_death_state();
    alarm[2] = room_speed/6;
}
// damage player
    hit = instance_place(x,y, obj_player);

if (hit != noone)
{
    hit.hp -= 1;
}
