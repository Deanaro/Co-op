ESC = keyboard_check_pressed(vk_escape) + gamepad_button_check_pressed(global.MENU_CONTROLLER, gp_start);
if ESC !=0
{
    room_goto(global.Last_Room);
}
