//sets the view to the average location of the players


var view_x = 0;
var view_y = 0;
var dev = 0;
for(var i=0;i<4;i++)
{
if instance_exists(global.Player[i, 0])
    {
    dev += 1;
    view_x += global.Player[i,0].x;
    view_y += global.Player[i,0].y;
    }
}
if (dev = 0) {
    view_xview[0] = 0;
    view_yview[0] = 0;
} else {
    var viewx = view_x/dev  -global.view_width/2;
    var viewy = view_y/dev  -global.view_height/2;
    if viewx < 0 {viewx = 0;}
    else if viewx > room_width - global.view_width {viewx = room_width - global.view_width}
    if viewy < 0 {viewy = 0;}
    else if viewy > room_height - global.view_height {viewy = room_height - global.view_height}
    view_xview[0] = viewx;
    view_yview[0] = viewy;
}

