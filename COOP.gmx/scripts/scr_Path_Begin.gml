 Currentx = floor(x/obj_Control.Cellsize)
 Currenty = floor(y/obj_Control.Cellsize)
 CurrentCell = Currentx + (obj_Control.Hcells*(Currenty)) // gets the current cell's number
 Goalx = floor(argument0/obj_Control.Cellsize)
 Goaly = floor(argument1/obj_Control.Cellsize)
 GoalCell = Goalx + (obj_Control.Hcells*(Goaly))  // gets the goal cell's number
if obj_Control.Path_Cell[CurrentCell] = 0 and obj_Control.Path_Cell[GoalCell] = 0
{
var Cellnum = 0;
for(var i = 0;i<obj_Control.Vcells;i++)         
{
    for(var i2 = 0; i2<obj_Control.Hcells;i2++)
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
    
    while Closed_List[GoalCell] = noone
    {
    scr_Path_Find(); // adds a cell to the closed list and 
    }
    scr_Path_Nodes();
}
