if instance_number(obj_Player) < 4 
{
for(var i=0;i<4;i++)
{
    if gamepad_button_check_pressed(i,gp_start)
    {
    var PlayerSlot = scr_CheckForPad(i);
    if PlayerSlot >= 0
    {
         {scr_SpawnPlayer(i,0,0, global.view_width,global.view_height,PlayerSlot);}
         with global.Player[PlayerSlot,0]
         {
         InputType = "scr_InputGP";
         }

    }
    }   
}
if keyboard_check_pressed(ord('E'))
{
   var PlayerSlot = scr_CheckForPad(4);
    if PlayerSlot >= 0
    {
         {scr_SpawnPlayer(4,0,0, global.view_width,global.view_height,PlayerSlot);}
         with global.Player[PlayerSlot,0]
         {
         InputType = "scr_InputKB";
         }

    }
}
}

