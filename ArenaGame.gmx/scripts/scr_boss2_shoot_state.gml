///scr_boss2_shoot_state()
acted = true;

if (ammo != 0) {
    //Change sprite to magic casting anim for lich
    var projectile = instance_create(x, y, o_projectile);
    projectile.creator = id;
    projectile.speed = 3;
    var shoot_dir = point_direction(x, y, plr_obj.x, plr_obj.y);
    projectile.direction = shoot_dir;
    
    ammo = 0;
    if (plr_obj == o_a) {
        alarm[1] = room_speed*4;
    } else if (plr_obj == o_b or plr_obj == o_c) {
        alarm[1] = room_speed*2;
    } 
}
