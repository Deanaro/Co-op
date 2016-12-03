spd = 3;
if move = 0
{move = 1;}
/////////// pathfind queing and runs every minimum of 10 steps
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
scr_Path_Walk(spd);
}
