//runs from obj_Control
Cellsize = 64; //the size of the cells
Hcells = room_width/Cellsize; // gets the number of horrizontal cells
Vcells = room_height/Cellsize; // gets the number of vertical cells
var Cellnum  = 0
// creates an array for a grid
for(var i = 0;i<Vcells;i++)         
{
    for(var i2 = 0; i2<Hcells;i2++)
    {
        // if a solid object is withing this cell its value is 1, otherwise it is 0
        Path_Cell[Cellnum] = place_meeting((i2)*Cellsize,(i)*Cellsize+1,obj_solid);
        Cellnum +=1;
    }
}
