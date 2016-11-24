///adds a Cell to the open list then sorts the list where the lowest F cost Cell is at OpenList[0]

if argument0 !=noone and obj_Control.Path_Cell[argument0] = 0 and Closed_List[argument0] = noone and Calculated_List[argument0,0]=noone
{
//sorts the open list from lowest F score to highest
if argument0 < obj_Control.Hcells
{var Celly = 0;}
else
{ var Celly = floor(argument0/obj_Control.Hcells);}// the row number of the cell
var Cellx = argument0 - (Celly * obj_Control.Hcells);

Calculated_List[argument0,0] = argument1 + Calculated_List[argument2,0]; //G
Calculated_List[argument0,1] = 10*(abs(Cellx-Goalx) + abs(Celly-Goaly)); //H
Calculated_List[argument0,2] = argument2; // Parent Cell
Calculated_List[argument0,3] = Calculated_List[argument0,0]/*<--G,  H equation-->*/+Calculated_List[argument0,1]; //F
if Open_List[0] = noone
{
    
    Open_List[0] = argument0;
    OpenNum +=1;
    var Done = 0;
    var Sortloop = 0;
    while Done = 0
    {
        if Open_List[Sortloop+1] !=noone 
        {
        var TEMP1 = Open_List[Sortloop +1];
        var TEMP2 = Open_List[Sortloop];
        if Calculated_List[TEMP2,3] > Calculated_List[TEMP1,3]
        {
          Open_List[Sortloop] = Open_List[Sortloop+1];
          Open_List[Sortloop+1] = argument0;
        }
        else if Calculated_List[TEMP2,3] = Calculated_List[TEMP1,3]
        {
            if Calculated_List[TEMP2,1] > Calculated_List[TEMP1,1]
            {Open_List[Sortloop] = Open_List[Sortloop+1];
             Open_List[Sortloop+1] = argument0;}
        }
        else
         {Done = 1;}
        }
        else 
        {Done = 1;}
        Sortloop +=1;
    }
    
}
else
{
Open_List[OpenNum] = argument0;
OpenNum +=1;
var Done = 0;
    var Sortloop = 0;
    while Done = 0
    {
        if OpenNum-Sortloop -2 >= 0
        {
        var TEMP1 = Open_List[OpenNum-Sortloop-2];
        var TEMP2 = Open_List[OpenNum-Sortloop-1];
        if Calculated_List[TEMP2,3] < Calculated_List[TEMP1,3]
        {
          Open_List[OpenNum-Sortloop-1] = Open_List[OpenNum-Sortloop-2]
          Open_List[OpenNum-Sortloop-2] = argument0;
        }
        else if Calculated_List[TEMP2,3] = Calculated_List[TEMP1,3]
        {
            if Calculated_List[TEMP2,1] < Calculated_List[TEMP1,1]
            { Open_List[OpenNum-Sortloop-1] = Open_List[OpenNum-Sortloop-2]
            Open_List[OpenNum-Sortloop-2] = argument0;}
        }
        else
         {Done = 1;}
        }
        else {Done = 1;}
        Sortloop +=1;
    }
}
check +=1;
}
else if argument0 !=noone and Calculated_List[argument0,0] !=noone and Calculated_List[argument0,0] > argument1 + Calculated_List[argument2,0]
{
    //find its position
    var loop = OpenNum;
    var TEMP1;
    var TEMP2;
    var Sortloop = 0;
    var Done =0;
    if argument0 < obj_Control.Hcells
{var Celly = 0;}
else
{ var Celly = floor(argument0/obj_Control.Hcells);}// the row number of the cell
var Cellx = argument0 - (Celly * obj_Control.Hcells);

Calculated_List[argument0,0] = argument1 + Calculated_List[argument2,0]; //G
Calculated_List[argument0,1] = 10*(abs(Cellx-Goalx) + abs(Celly-Goaly)); //H
Calculated_List[argument0,2] = argument2; // Parent Cell
Calculated_List[argument0,3] = Calculated_List[argument0,0]/*<--G,  H equation-->*/+Calculated_List[argument0,1]; //F
    while loop > 0
    {
        if Open_List[loop] = argument0
        {
                pos = loop;
                loop = 0;
                while Done = 0
                {
                    if pos-Sortloop -1 >= 0 and Open_List[pos-Sortloop -1] != noone
                    {
                    TEMP1 = Open_List[pos-Sortloop-1];
                    TEMP2 = Open_List[pos-Sortloop];
                    if Calculated_List[TEMP2,3] < Calculated_List[TEMP1,3]
                    {
                      Open_List[pos-Sortloop] = Open_List[pos-Sortloop-1]
                      Open_List[pos-Sortloop-1] = argument0;
                    }
                    else if Calculated_List[TEMP2,3] = Calculated_List[TEMP1,3]
                    {
                        if Calculated_List[TEMP2,1] < Calculated_List[TEMP1,1]
                        { Open_List[pos-Sortloop] = Open_List[pos-Sortloop-1]
                        Open_List[pos-Sortloop-1] = argument0;}
                    }
                    else
                     {Done = 1;}
                    }
                    else {Done = 1;}
                    Sortloop +=1;
                }
        }
        loop -=1
    }
}
