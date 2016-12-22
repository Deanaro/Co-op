Centery = bbox_bottom-8;
script_execute(InputType);
scr_Player_GOTOMENU();
scr_Player_Move();
scr_Player_PUpickup();
scr_Player_GUI();

if Weapon != -1
{
script_execute(Weapon);    // run script
}
if Utility != -1
{
script_execute(Utility);    // run script
}
//temp
if Hurt = 1
{
image_blend = c_red;
}
