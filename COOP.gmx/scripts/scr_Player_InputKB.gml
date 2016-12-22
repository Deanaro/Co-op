//input for keyboard
//NO ARGUMENTS
ESQ = keyboard_check_pressed(vk_escape);
ButtonA = keyboard_check_pressed(vk_space);                         //Use Utility
ButtonB = keyboard_check_pressed(ord('F'));                         //Cancel
ButtonX = keyboard_check_pressed(ord('E'));                         //Interact/ pickup
ButtonY = keyboard_check_pressed(ord('R'));                         //equip element
h_move = keyboard_check(ord('D')) - keyboard_check(ord('A'));       //Move
v_move = keyboard_check(ord('S')) - keyboard_check(ord('W'));       //Move
h_face = 0;
v_face = 0;
var angle = point_direction(x,y+sprite_height/2,mouse_x,mouse_y)    //Aim
 // when pressing right or left mouse button,
 // the player aims and faces towards the cursor
 // 
if mouse_check_button(mb_right) or mouse_check_button(mb_left)      //Aim calculations
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
Lshoulder = keyboard_check(vk_shift);                               //Sprint
Rtrigger = mouse_check_button(mb_left);                             //Use Weapon
dleft  = mouse_wheel_down();                                        //Change focused slot to the left
dright  = mouse_wheel_up();                                         //Change focused slot to the right

// makes movement roughly the same speed when moving diagnoly

if abs(h_move) + abs(v_move) = 2
{
h_move *= 1/1.3;
v_move *= 1/1.3;
}


// the aim vector , these should equal 1 together
Aim[0] = cos(angle*(pi/180));   // horizontal
Aim[1] = -sin(angle*(pi/180)); // vertical
