//input for keyboard

ButtonA = keyboard_check_pressed(ord('Q')); // A / Cross
ButtonB = keyboard_check_pressed(ord('F')); // B / Circle
ButtonX = keyboard_check_pressed(ord('E')); // X / square
ButtonY = keyboard_check_pressed(ord('R')); // Y / Triangle
h_move = keyboard_check(ord('D')) - keyboard_check(ord('A'));    // left analog Horizontal
v_move = keyboard_check(ord('S')) - keyboard_check(ord('W'));    // left analog Vertical
h_face = 0;
v_face = 0;
var angle = point_direction(x,y,mouse_x,mouse_y)
if mouse_check_button(mb_right) // when pressing right mouse button, the player aims and faces towards the cursor
{
if angle < 45 or angle >= 315
{h_face = 1;}
else if angle < 135 and angle >= 45
{v_face = -1;}
else if angle < 225 and angle >= 135
{h_face = -1;}
else if angle < 315 and angle >= 225
{v_face = 1;}
}

Lshoulder = keyboard_check(vk_shift); // left shoulder
Rtrigger = mouse_check_button(mb_left); // left shoulder
dleft  = mouse_wheel_down();// dpad left
dright  = mouse_wheel_up(); // dpad right

// makes movement smoother
if h_move > 0.5 and h_move < 1
{hmove = 1;}
if v_move > 0.5 and v_move < 1
{vmove = 1;}

// the aim vector , these should equal 1 together
Aim[0] = -sin(angle*(pi/180)); // vertical
Aim[1] = cos(angle*(pi/180));   // horizontal


