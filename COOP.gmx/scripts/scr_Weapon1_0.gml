//fireball
Wep_index = 1;
if WCooldown !=0
    {WCooldown -= 1;}
else if Rtrigger = 1 and Busy = 0
    {
    WCooldown = 4
    var xmove = Aim[0];
    var ymove= Aim[1];
    var Fireball = instance_create(x + xmove*48,y + ymove*48 + sprite_height/2, obj_Fireball);
    with Fireball
    {
    x_move = xmove ;
    y_move = ymove ;
    }
}
