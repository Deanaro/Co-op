if (argument_count =1) {
    var newEntry = argument0;
    var newEntry_col = "reg";
} else if (argument_count = 2) {
    var newEntry = argument0;
    var newEntry_col = argument1;
    if (newEntry_col == -1) {
        newEntry_col = "error";
    }
} else {
    var newEntry = "Error in log write... Incorrect number of arguments passed.";
    var newEntry_col = "error";
}

for (var i = console_lines-1; i > 0; i--) {
console_array[i,0] = console_array[i-1,0];
console_array[i,1] = console_array[i-1,1];
}

console_array[0,0] = newEntry;
console_array[0,1] = newEntry_col;
