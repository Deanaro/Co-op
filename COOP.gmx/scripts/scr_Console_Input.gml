/* If console is focused checks for legal console input and updates accordingly */

if (console_focused) {
    if (keyboard_lastkey != -1)
    {
    //Check input is a legal char 
        if (keyboard_lastkey != vk_enter) { 
            //check current length of input string in characters
            if (string_length(console_inlog) < 65) {
                //update console input string
                console_inlog += keyboard_lastchar;
                show_debug_message("Console input line should be: " + string(console_inlog));
            }  
        }
        keyboard_lastkey = -1;
    }
}
