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
    alarm[1] = room_speed*2;
}
