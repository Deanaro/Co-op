//plays attack animation and becomes "Busy" for the duration of the animation,
//unable to do other actions.
//sets cooldown
//argument0 = frame in which damage is applied
image_speed = AttackSPD;
image_index = 1;
Cooldown = AttackCD;
Busy = 1;
self.anim = "A";
ActionChange = 60 + round(random(60)); // EVERY 60-120 FRAMES (1-2 SECONDS)
RandomAction = round(random(10)); //Generates a new number form 0-10
alarm[0] = argument0/image_speed; //sets the hitbox to be created at the right frame
