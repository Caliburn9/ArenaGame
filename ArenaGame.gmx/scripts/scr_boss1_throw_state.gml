///scr_boss_throw_state()
acted = true;
speed = 0;
timer = time*room_speed;
invul = true;

//Plays boss throw sprite and checks for when boss has hands over himself
//Then throws damage object

var projectile = instance_create(x, y, o_projectile);
projectile.creator = id;
projectile.speed = 10;
var shoot_dir = point_direction(x, y, plr_obj.x, plr_obj.y);
projectile.direction = shoot_dir;

//Projectile doesnt travel far, this has to be fixed
//with the projectile overhaul to allow it to travel until it hits a wall
