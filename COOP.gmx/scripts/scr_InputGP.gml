// input for gamepads


ButtonA = gamepad_button_check_pressed(global.Player[Player_num,1], gp_face1); // A / Cross
ButtonB = gamepad_button_check_pressed(global.Player[Player_num,1], gp_face2); // B / Circle
ButtonX = gamepad_button_check_pressed(global.Player[Player_num,1], gp_face3); // X / square
ButtonY = gamepad_button_check_pressed(global.Player[Player_num,1], gp_face4); // Y / Triangle
h_move = gamepad_axis_value(global.Player[Player_num,1] , gp_axislh);    // left analog Horizontal
v_move = gamepad_axis_value(global.Player[Player_num,1] , gp_axislv);    // left analog Vertical
h_face= gamepad_axis_value(global.Player[Player_num,1] , gp_axisrh);    // right analog Horizontal
v_face = gamepad_axis_value(global.Player[Player_num,1] , gp_axisrv);    // right analog Vertical
Lshoulder = gamepad_button_check(global.Player[Player_num,1], gp_shoulderl); // left shoulder
Rtrigger = gamepad_button_check(global.Player[Player_num,1], gp_shoulderrb); // left shoulder
dleft  = gamepad_button_check_pressed(global.Player[Player_num,1], gp_padl); // dpad left
dright  = gamepad_button_check_pressed(global.Player[Player_num,1], gp_padr); // dpad right

// makes movement smoother
if h_move > 0.5
{hmove = 1;}
if v_move > 0.5
{vmove = 1;}

// the aim vector , these should equal 1 together
Aim[0] = v_face; //vertical
Aim[1] = h_face; //horrizontal




