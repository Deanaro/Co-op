// input for gamepads
// NO ARGUMENTS

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
Ltrigger = gamepad_button_check(global.Player[Player_num,1], gp_shoulderlb);
dleft  = gamepad_button_check_pressed(global.Player[Player_num,1], gp_padl); // dpad left
dright  = gamepad_button_check_pressed(global.Player[Player_num,1], gp_padr); // dpad right

if abs(h_move) + abs(v_move) > 0
{
var walkangle = point_direction(0,0,h_move,v_move);
// the aim vector , these should equal 1 together
v_move = -sin(walkangle*(pi/180)); // vertical
h_move = cos(walkangle*(pi/180));   // horizontal
}

if h_face !=0 or v_face !=0
{
    gamepad_set_axis_deadzone(global.Player[Player_num,1], 0); 
    var aimh = gamepad_axis_value(global.Player[Player_num,1] , gp_axisrh);  
    var aimv =  gamepad_axis_value(global.Player[Player_num,1] , gp_axisrv);
    var angle = point_direction(0,0,aimh,aimv);
    // the aim vector , these should equal 1 together
    Aim[0] = cos(angle*(pi/180));   // horizontal
    Aim[1] = -sin(angle*(pi/180)); // vertical
    gamepad_set_axis_deadzone(global.Player[Player_num,1], 0.3); 
}
else if h_move !=0 or v_move !=0 
{
    gamepad_set_axis_deadzone(global.Player[Player_num,1], 0); 
    var aimh = gamepad_axis_value(global.Player[Player_num,1] , gp_axislh);  
    var aimv =  gamepad_axis_value(global.Player[Player_num,1] , gp_axislv);
    var angle = point_direction(0,0,aimh,aimv);
    // the aim vector , these should equal 1 together
    Aim[0] = cos(angle*(pi/180));   // horizontal
    Aim[1] = -sin(angle*(pi/180)); // vertical
    gamepad_set_axis_deadzone(global.Player[Player_num,1], 0.3); 
}
