/*returns the facing direction of the player where:
scr_Player_Face(v_face,h_face);

    dir:
    0 = down
    1 = up
    2 = right
    3 = left
*/

if abs(argument0) > abs (argument1)
    {
    
        if argument0 > 0           // gets direction facing
        {dir = 0;}    //DOWN
        else if argument0 < 0  
        {dir = 1;}    //UP
    }
    else
    {
        if argument1 > 0  
        {dir = 2;}    //RIGHT
        else if argument1 < 0  
        {dir = 3;}    //LEFT
    }
