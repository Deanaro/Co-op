// when a power up is placed into a slot, update that slot value
// and update the weapon and utility scripts of the current player
// agrument0 = player num

with global.Player[argument0,0]
{
    Busy = 0;
}
var S1 = global.Slot[0 + (4*argument0)];  // gets he value of the power up in slots.
var S2 = global.Slot[1 + (4*argument0)];
var S3 = global.Slot[2 + (4*argument0)];
var S4 = global.Slot[3 + (4*argument0)];
if S2 = 11
{S2 = 0;}
if S4 = 11
{S4 = 0;}

// builds the script name, the larger number being on the left (scr_Weapon5_3).
if S1 > S2
{global.Player[argument0,0].Weapon = "scr_Weapon" + string(S1) + "_" + string(S2);}
else
{global.Player[argument0,0].Weapon = "scr_Weapon" + string(S2) + "_" + string(S1);}

if S3 > S4
{global.Player[argument0,0].Utility = "scr_Utility" + string(S3) + "_" + string(S4);}
else
{global.Player[argument0,0].Utility = "scr_Utility" + string(S4) + "_" + string(S3);}
