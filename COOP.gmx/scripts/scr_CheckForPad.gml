var pad = argument0;

/* This code will check the Player array firstly whether the pad already exists in the array (will return a -1 to -4)
If the pad is not found, it will return the first AVAILABLE player slot (0-3) 
If the pad is not found, and there are no slots left, it will return -1*/

for (var i = 0; i < array_height_2d(global.Player); i++)
{
     if (global.Player[i,1] = pad) 
     {
     return -i-1;
     }   
}
for (var i = 0; i < array_height_2d(global.Player); i++)
{
    if (global.Player[i, 1] = -1)
    {
    return i;
    }
}

return -4;
