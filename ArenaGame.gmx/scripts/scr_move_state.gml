///scr_move_state()
scr_get_input();
movement = MOVE;


//Attack
if (attack_key and attacked == false and o_player_stats.stamina >= STAMINA_COST) {
    var stats = o_player_stats;
    state = scr_attack_state;
    image_index = 0;
    alarm[1] = room_speed*stats.atk_spd;
    o_player_stats.stamina -= STAMINA_COST;
}

//Get the axis
var xaxis = (right_key - left_key);
var yaxis = (down_key - up_key)

//Get the direction
dir = point_direction(0, 0, xaxis, yaxis);

//Get the length
if (xaxis == 0 and yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scr_get_face();
}

//Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Horizontal collisions
if (place_meeting(x+hspd, y, o_solid))
{
    while (!place_meeting(x+sign(hspd), y, o_solid))
    {
        x += sign(hspd);
    }
    hspd = 0;
}

// Move horizontally
x += hspd;

// Vertical collisions
if (place_meeting(x, y+vspd, o_solid))
{
    while (!place_meeting(x, y+sign(vspd), o_solid))
    {
        y += sign(vspd);
    }
    vspd = 0;
}

// Move vertically
y += vspd;


//Control the sprite
image_speed = .2;
if (len == 0) image_index = 0;