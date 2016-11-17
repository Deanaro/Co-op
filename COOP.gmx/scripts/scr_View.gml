//sets the view to the average location of the players


var view_x = 0;
if instance_exists(obj_Player)
{
var view_y = 0;
var dev = 0;
for(var i=0;i<4;i++)
{
if instance_exists(global.Player[i, 0])
    {
    dev += 1;
    view_x += global.Player[i,0].x;
    view_y += global.Player[i,0].y + 48;
    }
}
var viewx = view_x/dev  -global.view_width/2;
var viewy = view_y/dev  -global.view_height/2;
if view_x - view_xview > 0
{view_xview[0] += ceil((-view_xview + viewx)/24);}
else
{view_xview[0] += floor((-view_xview + viewx)/24);}
if view_y - view_yview >= 0
{view_yview[0] += ceil((-view_yview + viewy)/24);}
else
{view_yview[0] += floor((-view_yview + viewy)/24);}
}

if view_xview < 0 {view_xview = 0;}
else if view_xview > room_width - global.view_width {view_xview = room_width - global.view_width}
if view_yview < 0 {view_yview = 0;}
else if view_yview > room_height - global.view_height {view_yview = room_height - global.view_height}
