 //(target.x,targer.y)
 
 Currentx = floor(x/obj_Pathfinder.Cellsize)
 Currenty = floor(bbox_bottom/obj_Pathfinder.Cellsize)
 CurrentCell = Currentx + (obj_Pathfinder.Hcells*(Currenty)) // gets the current cell's number
 Goalx = floor(argument0/obj_Pathfinder.Cellsize)
 Goaly = floor(argument1/obj_Pathfinder.Cellsize)
 GoalCell = Goalx + (obj_Pathfinder.Hcells*(Goaly))  // gets the goal cell's number
if obj_Pathfinder.Path_Cell[CurrentCell] = 0 and obj_Pathfinder.Path_Cell[GoalCell] = 0
{
var Cellnum = 0;
for(var i = 0;i<obj_Pathfinder.Vcells;i++)         
{
    for(var i2 = 0; i2<obj_Pathfinder.Hcells;i2++)
    {
        // if a solid object is withing this cell its value is 1, otherwise it is 0
        Closed_List[Cellnum] = noone;
        Open_List[Cellnum] = noone;
        Calculated_List[Cellnum,0] = noone;
        Cellnum +=1;
    }
}
Calculated_List[Cellnum,2] = 0;

//this script should be run from the object that needs a path (in most cases an enemy instance)
// argument0 = Goalx
// argument1 = Goaly


     ClosedNum = 0
     OpenNum = 0;
    //G =(cost from start location)  H =(aprox cost to Goal) F =(F = G+H)
    // the Calcualted_List is a 2D array that is indexed by Cell Number and holds G and F values.
    Calculated_List[CurrentCell,0] = 10; //G
    Calculated_List[CurrentCell,1] = 10*(abs(Currentx-Goalx) + abs(Currenty-Goaly)); //H
    Calculated_List[CurrentCell,2] = noone; // Parent Cell
    Calculated_List[CurrentCell,3] = 10/*<--G,  H equation-->*/+ Calculated_List[CurrentCell,1]//F
    //!!!!!!!!!!!!!!!!! Calculated_List[CurrentCell,3] = 0; // if equals 0 it means this cell is not in a closed list
    // Adding the starting cell to the open list, which is the list of nodes to be considered
    Open_List[0] = CurrentCell;
    OpenNum +=1;
    Loop = 0;
    while Closed_List[GoalCell] = noone and Loop < 300
    {
    Loop ++;
    scr_Path_Find(); // adds a cell to the closed list and 
    }
    if Loop !=300
    {
    scr_Path_Nodes();
    }
}
