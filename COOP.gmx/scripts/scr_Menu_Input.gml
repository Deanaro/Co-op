//handles the input in the menu and some of the actions

ESC = keyboard_check_pressed(vk_escape) + gamepad_button_check_pressed(global.MENU_CONTROLLER, gp_start);
if ESC !=0
{
    room_goto(global.Last_Room);
}

MENU_NAV = keyboard_check_pressed(ord('S')) - keyboard_check_pressed(ord('W'))
+ gamepad_button_check_pressed(global.MENU_CONTROLLER, gp_padd) - gamepad_button_check_pressed(global.MENU_CONTROLLER, gp_padu);

focused += sign(MENU_NAV);
focused = clamp(focused,0,5);

if keyboard_check_pressed(ord('E')) or gamepad_button_check_pressed(global.MENU_CONTROLLER, gp_face1)//A
{
    switch focused
    {
        case 0://Resume
            room_goto(global.Last_Room);
            break;
        case 1://Settings
            //settings code!!!!!!!!!!!!!!!!!!!!
            break;
        case 2://Leave //when a player wants to leave, disconnects the controller from the player slot
            global.Leave = true;
            room_goto(global.Last_Room);
            break;
        case 3://Start Menu
            room_goto(rm_StartMenu);
            break;
        case 4://Last Save
            global.Pause = 0;
            with obj_Control
            {
            scr_Respawn();
            }
            break;
        case 5://Exit
            game_end();
            break;
        
    }

}
