// GUI navigation ************

if dright = 1
{
    GUIslot += 1;
    if GUIslot = 4
    {GUIslot = 0;}
}
else if dleft = 1
{
    GUIslot -= 1;
    if GUIslot = -1
    {GUIslot = 3;}
    
}
// GUI navigation ************

// assign a PU to a slot
if ButtonY = 1 //A, CROSS
{
   var Slot_index = GUIslot + Player_num*4
   
   //if the slot is not locked, is no the same as the PU in the hold slot
   // and there is a power up in the hold slot
   if global.Slot[Slot_index] !=11 and hold !=0 and global.Slot[Slot_index] !=hold 
   {
    global.Slot[Slot_index] = hold;        // assigns hold's value to the highlighted slot
    hold = 0;
    scr_ToolUpdate(Player_num); // updates a string variable to match the correct tool's script name.
   }
   else
   {} //play error sound
}
// assign a PU to a slot
