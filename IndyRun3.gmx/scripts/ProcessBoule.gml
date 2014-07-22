var xx,yy,c1,c2;



// Apply gravity (and jumping)
y = y+grav;
grav+=0.4;
if( grav>=10 ) grav=10;

if (GetCollision(x,y+sprite_height) > 0 || GetBlockCollision(x, y+1))
{
 grav=0;
}


