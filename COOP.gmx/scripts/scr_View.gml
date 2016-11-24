//sets the view to the average location of the players
view_x = 0;
view_y = 0;

if instance_exists(obj_Player)
{
var dev = 0; // the number of players
for(var i=0;i<4;i++)
{
if instance_exists(global.Player[i, 0])
    {
    dev += 1;
    view_x += global.Player[i,0].x;
    view_y += global.Player[i,0].y + 48;
    }
}
// average locatioon of the players - half the view size (since the origin is at 0,0)
var viewx = view_x/dev - global.view_width/2; 
var viewy = view_y/dev - global.view_height/2;

// makes the view move smoothly to the viewx and viewy
if view_x - view_xview > 0
{view_xview[0] += ceil((-view_xview + viewx)/32);}
else
{view_xview[0] += floor((-view_xview + viewx)/32);}
if view_y - view_yview >= 0
{view_yview[0] += ceil((-view_yview + viewy)/32);}
else
{view_yview[0] += floor((-view_yview + viewy)/48);}

// if the view is outside the room, return it to the room
if view_xview < 0 {view_xview = 0;}
else if view_xview > room_width - global.view_width {view_xview = room_width - global.view_width}
if view_yview < 0 {view_yview = 0;}
else if view_yview > room_height - global.view_height {view_yview = room_height - global.view_height}
}
else // if no players exists set coordinates to 0,0
{
view_xview = 0;
view_yview = 0;
}
