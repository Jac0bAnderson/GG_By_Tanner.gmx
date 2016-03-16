/// scr_get_input
move_right = keyboard_check(vk_right);
move_up = keyboard_check(vk_up);
move_left = keyboard_check(vk_left);
move_down = keyboard_check(vk_down);
dash_key = keyboard_check_pressed(ord('Q'));
attack_key = keyboard_check_pressed(ord('W'));
shoot_key = keyboard_check_pressed(ord('E'));

//Get the axis for gamepad
xaxis = (move_right - move_left);
yaxis = (move_down - move_up);


// check for gamepad input
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    dash_key = gamepad_button_check_pressed(0, gp_face1);
    attack_key = gamepad_button_check_pressed(0, gp_face3);
}

