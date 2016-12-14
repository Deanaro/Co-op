//AI action: Chase
//Runs pathfinding scripts and creates a path in Node[] array
//if a path was successfull, Walks that path


if move = 0 //incase another action left move at 0
{move = 1;}
/////////// pathfind queing and runs every minimum of 10 and no more than 5 instances at once use pathfind
if CanUpdate = 0 and UpdatePath = 0
{
    CanUpdate = 1;
}
else if UpdatePath > 0
{
    UpdatePath --;
}

if CanUpdate = 1 and global.PathFindQ < 5 
{
UpdatePath = 10;
CanUpdate = 0;
scr_Path_Begin(Targetx,Targety);
}
/////////\\\\\\\\\\\
if NodeCount!=0 // if a path exists
{
scr_AI_Walk();//walks through the path
}
