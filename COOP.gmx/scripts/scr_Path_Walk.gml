//dictates the variable dir, assigning it the angle of the vector to from current position to goal, 
//while shifting the angle randomly for semi random movement which results in units not stacking over one another if they were to follow an unmodified path.

if changedir !=0 //timer for direction change
{changedir --;}
//initial node
if NodesVisited = 0 // at start of path
{
    NodesVisited ++; //looks at next node
    //assigns gotox and gotoy as the coordinates OF THE PATHFINDER GRID
    if Node[NodeCount-NodesVisited] < obj_Pathfinder.Hcells
    {gotoy = 0;}
    else
    {gotoy = floor(Node[NodeCount-NodesVisited]/obj_Pathfinder.Hcells);}
    gotox = Node[NodeCount-NodesVisited] - (gotoy * obj_Pathfinder.Hcells);
    //gets direction towards the required point
    dir = point_direction(x,bbox_bottom-16,gotox*64 +32,gotoy*64 +32)+ (random(50)-25);
}


if changedir = 0 //time to change direction slightly
{
changedir = 20+round(random(40));//random timer for next direction change (20-60 steps)
dir = point_direction(x,bbox_bottom-16,gotox*64 +32,gotoy*64 +32)+ (random(50)-25); //  changes the direction +- 25 degrees
}
if x=gotox + 32 and y=gotoy + 32 //if node reached
{
    NodesVisited ++; //looks at next node
    //assigns gotox and gotoy as the coordinates OF THE PATHFINDER GRID
    if Node[NodeCount-NodesVisited] < obj_Pathfinder.Hcells
    {gotoy = 0;}
    else
    {gotoy = floor(Node[NodeCount-NodesVisited]/obj_Pathfinder.Hcells);}
    gotox = Node[NodeCount-NodesVisited] - (gotoy * obj_Pathfinder.Hcells);
    //gets direction towards the required point
    dir = point_direction(x,bbox_bottom-16,gotox*64 +32,gotoy*64 +32)+ (random(50)-25);
}
