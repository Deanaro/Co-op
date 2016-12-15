// moves in orbit around the player
//scr_AI_CircleMove(clockwise) -1 = anticlockwise, 1 = clockwise
if move = 0 //incase another action left move at 0
{move = 1;}
dir = argument0*90 + point_direction(x,Centery,Targetx,Targety);
