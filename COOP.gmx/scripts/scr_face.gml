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
