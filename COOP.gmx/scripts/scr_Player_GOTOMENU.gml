//when the player presses esq or start goes to menu
if ESC {
global.Pause = 1;
global.MENU_CONTROLLER =global.Player[Player_num,1];
global.Last_Room = room;
global.PauseSurface = surface_create(window_get_width(),window_get_height());
surface_copy(global.PauseSurface, 0, 0, application_surface);
screen_save(working_directory + "\TEMP\TEMP_SURFACE.png");
room_goto(rm_Menu);
}
