///scr_boss1_attack_state()
var dir = point_direction(other.x, other.y, x, y);
var len = distance_to_point(other.x, other.y);
var xdir = lengthdir_x(len*256, dir);
var ydir = lengthdir_y(len*256, dir);
var damage = instance_create(x+xdir, y+ydir, o_damage);
damage.creator = id;
damage.knockback = 20;
state = scr_enemy_stall_state;
alarm[2] = room_speed*atk_spd;
