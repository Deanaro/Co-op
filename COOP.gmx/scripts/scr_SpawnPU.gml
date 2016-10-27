Unlocked = 10; // temporary
if argument0 =0// check to see if an index has already been passed in
{
var Index = floor(random(Unlocked) + 1); // assign the index a random integer between 1 and the number of unlocked PU
}
else 
{var Index = argument0;}
var PU = instance_create(argument1, argument2, obj_PU); // creates a PU pick up
 //assigns the random number as the PU_index and dispalyes the correct sprite
with PU    
{     
PU_Index = Index;
sprite_index = asset_get_index("spr_PU" + string(PU_Index));
}
