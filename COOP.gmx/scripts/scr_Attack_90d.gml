//creates a 90 degree hitbox that damages players inside it
//scr_Attack_90d(range,hitbox_sprite)
var hitbox = instance_create(x,bbox_bottom-20,obj_Hitbox);
with hitbox
{sprite_index = argument1;}
switch facing
{
    case 0:
        with hitbox {image_xscale = 1;
                     image_yscale = -1;}
        break;
    case 1:
        with hitbox {image_xscale = -1;
                     image_yscale = -1;}
        break;
    case 2:
        with hitbox {image_xscale = -1;
                     image_yscale = 1;}
        break;
    case 3:
        with hitbox {image_xscale = 1;
                     image_yscale = 1;}
        break;
}
