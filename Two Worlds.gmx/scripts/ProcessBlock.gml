//
//argument0 = block type   
// real word => 0    shadow => 1     both => -1
//

if(argument0 == -1)
{
    ether = false;
}
else
{
    if (argument0 == global.world)
        ether = true;
    else
        ether = false;
}


if(ether)
{
    solid = false;
    image_alpha = 0.2;
}
else 
{
    solid = true;
    image_alpha = 1;
}
