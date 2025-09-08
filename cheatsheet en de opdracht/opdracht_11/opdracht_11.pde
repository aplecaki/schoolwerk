int steen1 = 6;
int steen2 = 6;
int steen3 = 6;
int aantal = steen1 + steen2 + steen3;

if(steen1 == 1 && steen2 == 1 && steen3 == 1){println("CRITICAL MISS!");}
else if(steen1 <= 1 || steen2 <= 1 || steen3 <= 1){println("mis!");}
if(steen1 == 6 && steen2 == 6 && steen3 == 6){println("GEFELICITEERD!!!!");}
else if(steen1 >= 2 && steen2 >= 2 && steen3 >= 2){println(aantal + " HIT!");}
