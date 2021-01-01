///scr_check_for_enemy(enemy to search)

//If you wanted to make this into a function just make the two 
//variables in "step 1" the arguments and return "arrayHasValue".


// 1. Check for enemy and store every instance id of the existing 
//    number of enemies into an array "enemy"
var inst = argument0;
for (var i = 0; i < instance_number(inst); i += 1) {
   enemy[i] = instance_find(inst, i);
}

// 2. Determine the array we're searching and the value to look for
var searchThisArray = enemy,
    lookForThisValue = string(inst);

// 3. Check if value exists in array
//var arrayHasValue = false;
var val = noone;
for (var i = 0, iLen = array_length_1d(searchThisArray); i < iLen; i++) {
   if (searchThisArray[i] == lookForThisValue) {
        //arrayHasValue = true;
        lookForThisValue.id = val;
   } else {
        //arrayHasValue = false;    
   }
}

return arrayHasValue
