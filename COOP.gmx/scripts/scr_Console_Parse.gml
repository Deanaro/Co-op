var console_text = "";
var console_num = 0;
var console_to_write = "";
var console_to_write_col = "";

//catch lowercase letters
console_text = string_letters(string_lower(console_inlog));
//catch numbers
console_num = string_digits(console_inlog);
             
switch(console_text) {
case("exit"): // exit | Exit the game.
case("end"):
case("close"):
case("shutdown"):
    console_to_write = "Closing the program.";
    console_to_write_col = "command";
game_end();
break;

case("sayhello"): // say hello | Console says hello
    console_to_write = "Why... Hello.";
    console_to_write_col = "ai";
break;

case("help"): // help | show console help
    console_to_write = "Teal = Valid command | Red = Error | Grey = Standard output | Blue = Special | Yellow = Other";
    console_to_write_col = "command";
break;

case("players"): 
    for (var i = 0; i < array_height_2d(global.Player)-1; i++;) {
        if (global.Player[i,0] != noone) {
            console_to_write += "Player " + string(i) + ": ID#" + string(global.Player[i,0]) + " Num: " + string(global.Player[i,1]);
        }
    }
    console_to_write_col = "command";
break;
}

            
if (console_to_write == "") {
    console_to_write = "Could not parse: " + console_inlog;
    console_to_write_col = "error";
}
        
scr_Console_Log_Write(console_to_write, console_to_write_col);
