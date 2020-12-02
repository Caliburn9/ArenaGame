///scr_attack_state()
scr_get_input();
movement = ATTACK;

//Variables for hitbox spawner
var xx = 0;
var yy = 0;

//Change variable values based on character facing direction
switch (face){
    case DOWN:
        xx = x;
        yy = y+30;
        break;
           
    case UP:
        xx = x;
        yy = y-30;
        break;
        
    case LEFT:
        xx = x-30;
        yy = y;
        break;
             
    case RIGHT:
        xx = x+30;
        yy = y;
        break;
} 

//Create hitbox or projectile based on character        
if (me == WARRIOR) {
    var damage = instance_create(xx, yy, o_damage);
    damage.creator = id;
    //damage.damage = obj_player_stats.attack;
    attacked = true;
                
} else if (me == ARCHER) {
    if (!instance_exists(o_projectile)) {
        var projectile = instance_create(xx, yy, o_projectile);
        projectile.creator = id;
        
        with (projectile) {
        speed = 10;
        var shoot_dir = other.face * 90;
        direction = shoot_dir;
        image_angle = shoot_dir;   
    }
    }
    //damage.damage = obj_player_stats.attack;
    attacked = true;
        
} else if (me == MAGE) {
    if (!instance_exists(o_projectile)) {
        var projectile = instance_create(xx, yy, o_projectile);
        projectile.creator = id;
        
        with (projectile) {
        speed = 10;
        var shoot_dir = other.face * 90;
        direction = shoot_dir;
        image_angle = shoot_dir;   
    }
    }
    //damage.damage = obj_player_stats.attack;
    attacked = true;   
}




/*
REFERENCES

if (image_index >= 3 and attacked == false){
    var xx = 0;
    var yy = 0;
    switch (sprite_index){
           case spr_dawn_attack_down:
              xx = x;
              yy = y+30;
              break;
           
           case spr_dawn_attack_up:
              xx = x;
              yy = y-30;
              break;
        
           case spr_dawn_attack_left:
              xx = x-30;
              yy = y;
              break;
             
           case spr_dawn_attack_right:
              xx = x+30;
              yy = y;
              break;
        }
   
   var damage = instance_create(xx, yy, obj_damage);
   damage.creator = id;
   damage.damage = obj_player_stats.attack;
   attacked = true;
}
*/
