
if instance_number(obj_Player) < 4 
{
//gamepad join
for(var i=0;i<4;i++)
{
    if gamepad_button_check_pressed(i,gp_start) //checks each gamepad for the Start button to be pressed
    {
    var PlayerSlot = scr_CheckForPad(i);    // checks if the pad is already in use and if it is not will return the lowest available player Slot
    if PlayerSlot >= 0 //if CheckForPad was successful
    {
         {scr_SpawnPlayer(i,view_xview,view_yview,view_xview+ global.view_width - 300,view_yview+global.view_height,PlayerSlot);} //spawns player within view, and assigns its ID and pad number to the slot returned scr_CheckForPad
        
    }
    }   
}

//keyboard join
if keyboard_check_pressed(ord('E'))
{
   var PlayerSlot = scr_CheckForPad(4); // checks if the keyboard is already in use and if it is not will return the lowest available player Slot
    if PlayerSlot >= 0 //if CheckForPad was successful
    {
         {scr_SpawnPlayer(4,view_xview,view_yview,view_xview+ global.view_width - 300,view_yview+global.view_height,PlayerSlot);} //spawns player within view, and assigns its ID and keyboard to the slot returned scr_CheckForPad
         with global.Player[PlayerSlot,0]
         {
         InputType = "scr_InputKB"; // with the player that was created, sets intup type to keyboard
         }

    }
}
}

