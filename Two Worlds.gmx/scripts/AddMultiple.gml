// argument0 = ID of parent

// Loop through and attach a new minime to the end of our list
var i;

// Find the end of the mini-me "chain"
i = argument0;
while(i.child>0){
    i = i.child;
}

i.child  = instance_create(i.x,i.y,minime);
i.child.destid = i.id;
i.child.image_blend = i.image_blend;
return i.child;



