///scr_damaged_state(xforce, yforce)
var hspd = argument0;
var vspd = argument1;

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
