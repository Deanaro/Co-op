//fireball
Wep_index = 1;
if cooldown !=0
{cooldown -= 1;}
if Rtrigger = 1 and cooldown = 0
{
cooldown = 10;
if h_face =0 and v_face = 0
{var xmove = h_move;
var ymove= v_move;}
else
{var xmove = Aim[1];
var ymove= Aim[0];}
var Fireball = instance_create(x + xmove*16,y + ymove*16, obj_Fireball);
with Fireball
{
x_move = xmove;
y_move = ymove;
}
}

