///scr_boss2_chase_state
acted = false;

if (instance_exists(plr_obj)) {
    var dis = point_distance(x, y, plr_obj.x, plr_obj.y);
    var dir_plr = point_direction(x, y, plr_obj.x, plr_obj.y);
    xaxis = lengthdir_x(1, dir_plr);
    yaxis = lengthdir_y(1, dir_plr);
    
    var dir = point_direction(0, 0, xaxis, yaxis);
    var hspd = lengthdir_x(spd, dir);
    var vspd = lengthdir_y(spd, dir);
    
    //Change direction to face player
    if (hspd != 0) {
      image_xscale = sign(hspd);
    }
    
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
}
