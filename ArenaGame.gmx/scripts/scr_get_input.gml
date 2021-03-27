///scr_get_input()
//Movement input
up_key = keyboard_check(ord('W'));
down_key = keyboard_check(ord('S'));
left_key = keyboard_check(ord('A'));
right_key = keyboard_check(ord('D'));
attack_key = keyboard_check_pressed(ord('J'));
roll_key = keyboard_check_pressed(ord('K'));

//Menu input
m_up = keyboard_check_pressed(ord('W'));
m_down = keyboard_check_pressed(ord('S'));
m_left = keyboard_check_pressed(ord('A'));
m_right = keyboard_check_pressed(ord('D'));
m_select = keyboard_check_pressed(ord('J'));
m_back = keyboard_check_pressed(ord('K'));

//Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

//Check for gamepad input
if (gamepad_is_connected(0)){
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    dash_key = gamepad_button_check_pressed(0, gp_face1);
    attack_key = gamepad_button_check_pressed(0, gp_face3);
}