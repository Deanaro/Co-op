//scr_Path_Walk(speed)
//run this after to start walking a path
if changedir !=0
{changedir --;}
if NodesVisited = 0
{
    randshiftx = round(random(32));
    randshifty = round(random(32));
    NodesVisited ++;
    if Node[NodeCount-NodesVisited] < obj_Pathfinder.Hcells
    {gotoy = 0;}
    else
    {gotoy = floor(Node[NodeCount-NodesVisited]/obj_Pathfinder.Hcells);}
    gotox = Node[NodeCount-NodesVisited] - (gotoy * obj_Pathfinder.Hcells);
    dir = point_direction(x,bbox_bottom-16,gotox*64 +32,gotoy*64 +32)+ (random(50)-25);
}

if changedir = 0
{
changedir = 20+round(random(40));
dir = point_direction(x,bbox_bottom-16,gotox*64 +32,gotoy*64 +32)+ (random(50)-25);
}
if x=gotox + 32 and y=gotoy + 32
{
    randshiftx = round(random(32));
    randshifty = round(random(32));
    NodesVisited ++;
    if Node[NodeCount-NodesVisited] < obj_Pathfinder.Hcells
    {gotoy = 0;}
    else
    {gotoy = floor(Node[NodeCount-NodesVisited]/obj_Pathfinder.Hcells);}
    gotox = Node[NodeCount-NodesVisited] - (gotoy * obj_Pathfinder.Hcells);
}
