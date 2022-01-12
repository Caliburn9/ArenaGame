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
        yy = y+32;
        break;
           
    case UP:
        xx = x;
        yy = y-32;
        break;
        
    case LEFT:
        xx = x-32;
        yy = y;
        break;
             
    case RIGHT:
        xx = x+32;
        yy = y;
        break;
} 

//Create hitbox or projectile based on character        
if (me == WARRIOR and attacked == false) {
    var damage = instance_create(xx, yy, o_damage);
    damage.creator = id;
    damage.dmg_ = o_player_stats.dmg;
    attacked = true;
                 
} else if (me == ARCHER and attacked == false) {
    //if (!instance_exists(o_projectile)) { <- Bug fix this later
        var projectile = instance_create(xx, yy, o_projectile);
        projectile.creator = id;
        
        with (projectile) {
            speed = 10;
            var shoot_dir = other.face * 90;
            direction = shoot_dir;
            image_angle = shoot_dir;   
            projectile.dmg_ = o_player_stats.dmg;
        }
    //}
    attacked = true;
        
} else if (me == MAGE and attacked == false) {
    //if (!instance_exists(o_projectile)) { <- Bug fix this later
        var projectile = instance_create(xx, yy, o_projectile);
        projectile.creator = id;
        
        with (projectile) {
            speed = 10;
            var shoot_dir = other.face * 90;
            direction = shoot_dir;
            image_angle = shoot_dir; 
            projectile.dmg_ = o_player_stats.dmg;  
        }
    //}
    attacked = true;  
}




/*
###Ranged attack 1###
if (me == ARCHER) {
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

###Ranged Attack 2###
if (me == MAGE) {
    if (!instance_exists(o_projectile)) {
        var p = instance_create(xx, yy, o_projectile);
        p.creator = id;
        var shoot_spd = 20;
        var shoot_dir = face*90;
        var xshoot_force = lengthdir_x(shoot_spd, shoot_dir);
        var yshoot_force = lengthdir_y(shoot_spd, shoot_dir);
        
        with (p) {
           x += xshoot_force;
           y += yshoot_force;
    }
    }


####REFERENCES####

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
