//Check low priority input key states
ButtonTilde = keyboard_check_pressed(192); // ~ / Tilde Key
ButtonEnter = keyboard_check_pressed(vk_enter); // ENTER / Enter Key

//Open/Close console
if (ButtonTilde == 1) {
    obj_Console.console_open = !obj_Console.console_open;
    //End console entry focus if console not open
    if (obj_Console.console_open == 0) { 
        obj_Console.console_focused = 0; 
    }
    ButtonTilde = 0;
    //update the console appearance preferences
    with (obj_Console) script_execute(scr_Console_Pref_Update);  
}

//Give console focus if enter pressed whilst console is open
if (ButtonEnter == 1) {
    ButtonEnter = 0;
    //Focus input to the console
    if (obj_Console.console_open == 1) {
        with (obj_Console) script_execute(scr_Console_Execute); 
        obj_Console.console_focused = !obj_Console.console_focused;
    }
    //update the console appearance preferences
    with (obj_Console) script_execute(scr_Console_Pref_Update); 
}
