if Open_List[0] = noone
{
Loop = 300;
exit
}
/* this script looks at the adjecent cells
and adds them to the open list if they are legal
argument0 = cellnumber */
var temp = Open_List[0];
if Open_List[0] < obj_Pathfinder.Hcells
{var Celly = 0;}
else
{ var Celly = floor(Open_List[0]/obj_Pathfinder.Hcells);}// the row number of the cell
var Cellx = Open_List[0] - (Celly * obj_Pathfinder.Hcells);


// below checks to see which adjecent cells are valid
var left = Open_List[0] -1;
var up = Open_List[0] -obj_Pathfinder.Hcells;
var right = Open_List[0] + 1;
var down = Open_List[0]+obj_Pathfinder.Hcells;
var upleft = up - 1;
var upright = up + 1;
var downleft = down - 1;
var downright = down +1;

if Cellx = 0
{
upleft = noone;
downleft = noone;
left = noone;
}
else if Cellx = obj_Pathfinder.Hcells-1
{
upright = noone;
downright = noone;
right = noone;
}
if Celly = 0
{
upleft = noone;
upright = noone;
up = noone;
}
else if Celly = obj_Pathfinder.Vcells-1
{
downleft = noone;
downright = noone;
down = noone;
}

//Checks to see if there are 2 walls blocking of a corner
if up !=noone
{
    if left !=noone
    {
        if obj_Pathfinder.Path_Cell[up] = 1 and obj_Pathfinder.Path_Cell[left] = 1
        {upleft = noone;}
    }
    if right !=noone
    {
    if obj_Pathfinder.Path_Cell[up] = 1 and obj_Pathfinder.Path_Cell[left] = 1
    {upright = noone;}
    }
}
if down !=noone
{
    if left !=noone
    {
        if obj_Pathfinder.Path_Cell[down] = 1 and obj_Pathfinder.Path_Cell[left] = 1
        {downleft = noone;}
    }
    if right !=noone
    {
        if obj_Pathfinder.Path_Cell[down] = 1 and obj_Pathfinder.Path_Cell[right] = 1
        {downright = noone;}
    }
}
// moves cell from position 0 in open list (the one with lowest F cost) to the closed list
Closed_List[Open_List[0]] = 1;
ClosedNum +=1;
Open_List[0] = noone;
OpenNum -=1;

check = 0;
//if the cells are valid they will be added to the open list and the list will be sorted
    scr_Path_Sort(left,10,temp);
    scr_Path_Sort(right,10,temp);
    scr_Path_Sort(up,10,temp);
    scr_Path_Sort(down,10,temp);
    scr_Path_Sort(upleft,14,temp);
    scr_Path_Sort(upright,14,temp);
    scr_Path_Sort(downleft,14,temp);
    scr_Path_Sort(downright,14,temp);
  

if check = 0 or Open_List[0] = noone {scr_Path_Shiftlist();}
