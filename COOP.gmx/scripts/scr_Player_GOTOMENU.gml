//when the player presses esq or start goes to menu
if ESQ {
global.Pause = 1;
global.MENU_CONTROLLER =global.Player[Player_num,1];
global.Last_Room = room;
room_goto(rm_Menu);
}
