//gets the direction of the next node
//NO ARGUMENTS

//xshift = irandom(obj_Pathfinder.Cellsize);
//yshift = irandom(obj_Pathfinder.Cellsize);
NodesVisited ++; //looks at next node
//assigns gotox and gotoy as the coordinates OF THE PATHFINDER GRID
if NodeCount - NodesVisited >=0
{
    if Node[NodeCount-NodesVisited] < obj_Pathfinder.Hcells
    {gotoy = 0;}
    else
    {gotoy = floor(Node[NodeCount-NodesVisited]/obj_Pathfinder.Hcells);}
    gotox = Node[NodeCount-NodesVisited] - (gotoy * obj_Pathfinder.Hcells);
    //gets direction towards the required point
    dir = point_direction(x,bbox_bottom-16,gotox*obj_Pathfinder.Cellsize +obj_Pathfinder.Cellsize/2 ,gotoy*obj_Pathfinder.Cellsize + obj_Pathfinder.Cellsize/2);
    //instance_create(gotox*obj_Pathfinder.Cellsize ,gotoy*obj_Pathfinder.Cellsize ,obj_SpawnLocation)
}
