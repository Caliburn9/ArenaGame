///scr_check_for_player()
if (instance_exists(o_a)) {
    var tar = o_a;
    var dis = point_distance(x, y, tar.x, tar.y);
    var dir = point_direction(x, y, tar.x, tar.y);
    state = scr_enemy_chase_state;
    xaxis = lengthdir_x(1, dir);
    yaxis = lengthdir_y(1, dir);
} else if (instance_exists(o_b)) {
    var tar = o_b;
    var dis = point_distance(x, y, tar.x, tar.y);
    var dir = point_direction(x, y, tar.x, tar.y);
    state = scr_enemy_chase_state;
    xaxis = lengthdir_x(1, dir);
    yaxis = lengthdir_y(1, dir);
} else if (instance_exists(o_c)) {
    var tar = o_c;
    var dis = point_distance(x, y, tar.x, tar.y);
    var dir = point_direction(x, y, tar.x, tar.y);
    state = scr_enemy_chase_state;
    xaxis = lengthdir_x(1, dir);
    yaxis = lengthdir_y(1, dir);
}

    /*
    if (dis < sight) {
        state = scr_enemy_attack_state;
    } else {
        state = scr_enemy_chase_state;
        targetx = tar.x;
        targety = tar.y;
    }
    */
