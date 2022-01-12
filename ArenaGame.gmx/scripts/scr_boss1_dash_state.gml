///scr_boss1_dash_state()
acted = true;
move_towards_point(plr_obj.x, plr_obj.y, spd);
timer = time*room_speed;
invul = true;

var damage = instance_create(x, y, o_bdamage);
damage.image_xscale = 1.5;
damage.image_yscale = 1.75;
damage.creator = id;
