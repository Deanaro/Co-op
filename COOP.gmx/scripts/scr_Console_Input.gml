//Keys ALWAYS tracked
if (ButtonTilde == 0) 
ButtonTilde = keyboard_check_pressed(192); // ~ / Tilde Key
if (ButtonEnter == 0) 
ButtonEnter = keyboard_check_pressed(vk_enter); // ENTER / Enter Key

/* If console is focused checks for legal console input and updates accordingly */
//Keys ONLY tracked when console focused for typing
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

