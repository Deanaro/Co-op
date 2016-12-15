//dictates the variable dir, assigning it the angle of the vector to from current position to goal, 
//while shifting the angle randomly for semi random movement which results in units not stacking over one another if they were to follow an unmodified path.

if changedir !=0 //timer for direction change
{changedir --;}
//initial node
if NodesVisited = 0
{
    scr_AI_Walk_NextNode();
}


/*if changedir = 0 //time to change direction slightly
{
changedir = 60+irandom(60);//random timer for next direction change (20-60 steps)
dir = point_direction(x,bbox_bottom-16,gotox*64 +32,gotoy*64 +32)+  (irandom(50)-25); //  changes the direction +- 25 degrees
}*/
//if NodeCount - NodesVisited > 0  and Node[NodeCount-NodesVisited] = floor(x/obj_Pathfinder.Cellsize) + (obj_Pathfinder.Hcells*(floor(bbox_bottom/obj_Pathfinder.Cellsize)))
if x = gotox*obj_Pathfinder.Cellsize and Centery = gotoy*obj_Pathfinder.Cellsize 
{
    scr_AI_Walk_NextNode();
}
