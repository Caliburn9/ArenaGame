///scr_boss_damaged_state(xforce, yforce, friction)
var dir = point_direction(x, y, other.x, other.y)
var hspd = argument0;
var vspd = argument1;
var _friction = argument2;

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
x += floor(hspd - _friction);

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
y += floor(hspd - _friction);
