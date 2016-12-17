if (mouse_check_button_pressed(mb_left) && chatter_debug == true) {
    var obj_found_id = instance_position( mouse_x, mouse_y, all );
    if (obj_found_id != noone) {
        var obj_found = object_get_name(obj_found_id.object_index);
        with (obj_Chatter) { scr_Chatter_Passage_Get(1, "ClickTest", obj_found, 1 ); } 
    } else {
        scr_Console_Log_Write("No object found at click location...", "error");
    }
    
}
