var console_text = "";
var console_num = 0;
var console_to_write = "";
var console_to_write_col = "";

//catch lowercase letters
console_text = string_letters(string_lower(console_inlog));
//catch numbers
console_num = real(string_digits(console_inlog));

/* Parse and process 'info' commands*/
if (string_pos("info", console_text) != 0) {
    console_text = string_replace(console_text, "info", "");
    switch(console_text) {
        case("playerpos"): // Prints the X and Y position of player number entered
        case("playerposition"):
        case("playerx"):
        case("playery"):
        if (console_num >= 0 && console_num < array_height_2d(global.Player) && global.Player[console_num, 0] != noone) {
            console_to_write = "Player " + string(console_num) + " [x:" + string(global.Player[console_num, 0].x) + " y:" + string(global.Player[console_num, 0].y) + "]";
            console_to_write_col = "command";
        } else {
            console_to_write = "Player not found...";
            console_to_write_col = "error";
        }
        break;
        
        case("players"): // Prints every player of the global.Player array and their ID's
        for (var i = 0; i < array_height_2d(global.Player)-1; i++;) {
            if (global.Player[i,0] != noone) {
                console_to_write += "Player " + string(i) + ": ID\#" + string(global.Player[i,0]) + " Num: " + string(global.Player[i,1]) + " | ";
            }
        }
        console_to_write_col = "command";
    break;
    }
}
    
/* Parse and process all other commands */         
switch(console_text) {
    /* Basic System Commands */
    case("exit"): // exit | Exit the game.
    case("end"):
    case("close"):
    case("shutdown"):
        console_to_write = "Closing the program.";
        console_to_write_col = "command";
    game_end();
    break;
    
    /* Information Output Commands */

    case("help"): // help | show console help
        console_to_write = "Pink = Valid command | Red = Error | Grey = Standard output | Blue = Special | Yellow = Other";
        console_to_write_col = "command";
    break;
    
    /* Fun / Fuckery commands */
    
    case("sayhello"): // say hello | Console says hello
        console_to_write = "Why... Hello.";
        console_to_write_col = "ai";
    break;
}


            
if (console_to_write == "") {
    console_to_write = "Could not parse: " + console_inlog;
    console_to_write_col = "error";
}
        
scr_Console_Log_Write(console_to_write, console_to_write_col);
