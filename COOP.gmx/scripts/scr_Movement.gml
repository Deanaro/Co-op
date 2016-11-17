var movex = round(h_move * spd);
var movey = round(v_move * spd);

//SPRINT
if Lshoulder = 1
{spd = 5;}
else
{spd = 3;}


if !place_meeting(x + movex, y, obj_solid) and x + movex < view_xview+global.view_width and x+ movex > view_xview
{
    x += movex;
}
// x collision
else 
{   
    if place_meeting(x + movex, y, obj_solid)
    {
    while !place_meeting(x + sign(movex), y, obj_solid)
    {
        x += sign(movex);
    }
    movex = 0;
}}
// y movepent
if !place_meeting(x, y + movey, obj_solid)  and y + movey < view_yview+global.view_height - 48 and y+ movey > view_yview -48
{
    y += movey;
}
//y collision
else 
{
    if place_meeting(x, y+movey, obj_solid)
    {
    while !place_meeting(x , y + sign(movey), obj_solid)    
    {
        y += sign(movey);
    }
    movey = 0;
}}
//Animation handling *****************************

if v_face = 0 and h_face = 0
{scr_face(v_move,h_move);}
else
{scr_face(v_face,h_face);}
if h_move !=0 or v_move != 0    // while moving
{
     var anim = 'W';
     image_speed = 0.3;     // sets animation to W (walk)
}
else
{
    var anim = '';
    image_speed = 0.1;  // sets animation to '' (stationary)
}

// handles the sprite
// builds the sprite name from different varttiables
// structure:
// "spr_P" + player number + "_" + direction facing (0-3) + animation
sprite_index = asset_get_index("spr_P" + string(Player_num + 1) + "_" + string(dir) + string(anim)); // choses correct sprite

depth = -(y+sprite_height); // depths changes depending on y value

