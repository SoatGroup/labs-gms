randNumber = random_range(0,100);
randFleche = random_range(0,200);

//generates only two screens ahead
//if (global.posCreation < (view_xview[0]+1500))    {

//pique
if (global.posCreation>1500 && randNumber > 85 && randNumber < 95){
instance_create(global.posCreation,room_height-128,oPique);
}

// fleche
if (instance_exists(player)){
if (randFleche < 1){
    t = choose(1,2)
    if (t==1)
    {
        f = choose(4,5,6,7);
        instance_create(player.x+960, room_height-32*f,oFleche);
    }
    else{
        instance_create(player.x+1024,32,oStalact);   
    }
}
}

//sol et plafond
xsol = global.posCreation;
ysol = room_height - 32;
if(global.posCreation>1162){
    if (global.posCreation<20000 && randNumber < 95){
        instance_create(xsol,0,oUnderGround);     
        instance_create(xsol,ysol,oUnderGround); 
        instance_create(xsol,ysol-32,oFlatGround);
    }
    else {   
         
        //trou  avec plafond       
        instance_create(xsol,ysol-32,oRightGround);
        instance_create(xsol,ysol,oUnderGround);
        p = choose(3,4,5);
        global.posCreation +=32*p;
        instance_create(global.posCreation,ysol-32,oLeftGround);
        instance_create(global.posCreation,ysol,oUnderGround);
        
        instance_create(xsol,0,oUnderGround);
        instance_create(xsol+32,0,oUnderGround);
        instance_create(xsol+64,0,oUnderGround);
        instance_create(xsol+96,0,oUnderGround);
        instance_create(xsol+128,0,oUnderGround);
        instance_create(xsol+160,0,oUnderGround);
            
    }
}

global.posCreation += 32;
//}

