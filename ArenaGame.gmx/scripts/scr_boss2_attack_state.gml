///scr_boss2_attack_state()
if (b_attacked == false) {
    var projectile = instance_create(x, y, o_projectile);
    projectile.creator = id;
    var player = plr;
    if (instance_exists(player)) {
        with (projectile) {
            speed = 10;
            var shoot_dir =  point_direction(x, y, player.x, player.y); //Player's location
            direction = shoot_dir;
            image_angle = shoot_dir;   
            projectile.dmg_ = other.dmg;
        }
    }
    state = scr_enemy_stall_state;
    alarm[0] = room_speed*atk_spd;
    alarm[2] = room_speed*atk_spd;
    b_attacked = true;
}
