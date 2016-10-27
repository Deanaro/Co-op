var movex = ceil(h_move * spd);
var movey = ceil(v_move * spd);

//SPRINT
if Lshoulder = 1
{spd = 5;}
else
{spd = 3;}


if !place_meeting(x + movex, y, obj_solid)
{
    x += movex;
}
// x collision
else 
{
    while !place_meeting(x + sign(movex), y, obj_solid)
    {
        x += sign(movex);
    }
    movex = 0;
}
// y movepent
if !place_meeting(x, y + movey, obj_solid)
{
    y += movey;
}
//yx collision
else 
{
    while !place_meeting(x , y + sign(movey), obj_solid)
    {
        y += sign(movey);
    }
    movey = 0;
}
//Animation handling *****************************

if v_face = 0 and h_face = 0
{scr_face(v_move,h_move);}
else
{scr_face(v_face,h_face);}
if movex !=0 or movey != 0    // while moving
{
     var anim = 'W';     // sets animation to W (walk)
}
else
{
    var anim = '';  // sets animation to '' (stationary)
}

// handles the sprite
// builds the sprite name from different varttiables
// structure:
// "spr_P" + player number + "_" + direction facing (0-3) + animation
sprite_index = asset_get_index("spr_P" + string(Player_num + 1) + "_" + string(dir) + string(anim)); // choses correct sprite

depth = -(y+sprite_height); // depths changes depending on y value

