//fireball
Wep_index = 1;
if cooldown !=0
    {cooldown -= 1;}
else if Rtrigger = 1
    {
    cooldown = 4
    var xmove = Aim[1];
    var ymove= Aim[0];
    var Fireball = instance_create(x + xmove*64,y + ymove*64 + sprite_height/2, obj_Fireball);
    with Fireball
    {
    x_move = xmove;
    y_move = ymove;
    }
}
