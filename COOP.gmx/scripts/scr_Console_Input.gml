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
        if (keyboard_lastkey == vk_backspace) {
            console_inlog = string_delete(console_inlog, string_length(console_inlog), 1);
        } else if (keyboard_lastkey != vk_enter && keyboard_lastkey != vk_shift && keyboard_lastkey != vk_decimal) { 
            //check current length of input string in characters
            if (string_length(console_inlog) < 65) {
                //update console input string
                show_debug_message("lastkey: " + keyboard_lastchar)
                console_inlog += keyboard_lastchar;
            }  
        }
        keyboard_lastkey = -1;
        keyboard_lastchar = "";
    }
}

