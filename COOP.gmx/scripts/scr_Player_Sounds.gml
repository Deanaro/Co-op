if anim = 'W'
{
if step_timer !=0
  {step_timer --;}
else
    {
    step_timer = 35;
    audio_sound_pitch(snd_step,0.7+random(0.3));
    audio_play_sound(snd_step,1,0);
    }
}
else {step_timer = 5;}
