//fireball
Wep_index = 2;
if WCooldown !=0
    {WCooldown -= 1;}
else if Rtrigger = 1 and Busy = 0
    {
    WCooldown =16;
    {
    scr_Weapon_Projectile(obj_Fireball,0,20);
    audio_sound_pitch(snd_fireball,0.5+random(0.7));
    audio_play_sound(snd_fireball,1,0);
    scr_Weapon_Projectile(obj_Fireball,10,20);
    audio_sound_pitch(snd_fireball,0.5+random(0.7));
    audio_play_sound(snd_fireball,1,0);
    scr_Weapon_Projectile(obj_Fireball,-10,20);
    audio_sound_pitch(snd_fireball,0.5+random(0.7));
    audio_play_sound(snd_fireball,1,0);
    }
    }
