for(var i=0; i<5;i++)
{
  if status_list[i,0] !=0 
  {
  status_list[i,1] --; //countdown
  if status_list[i,1] <= 0
  {status_list[i,0] = 0}
  else if i !=0
      {
      for (var i2 = 1; i2<5; i2++)
        {   
            
            if i - i2 >= 0 and status_list[i-i2,0] = 0
            {
                status_list[i-i2,0] = status_list[i,0];
                status_list[i-i2,1] = status_list[i,1];
                status_list[i,0] = 0;
                status_list[i,1] = 0;
            }
        }
      }
  } 
   
}
