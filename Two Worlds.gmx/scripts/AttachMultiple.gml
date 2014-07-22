// argument0 = ID of parent
// argument1 = ID of multiple
// Loop through and attach a new minime to the end of our list
var i;

// Find the end of the mini-me "chain"
i = argument0;
while(i.child>0){
    i = i.child;
}

i.child  = argument1;
i.child.destid = i.id;
return i.child;



