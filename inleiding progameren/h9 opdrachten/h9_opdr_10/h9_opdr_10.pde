



void setup() {
  size(500, 500);
}

void draw() {
  background( 255, 255, 0);
  tekenboom();
  
}


void tekenboom(){
 

fill(150,75,0);
stroke(150,75,0);
 rect( 250,250,10,100);
 noFill();
 fill(0,255,0);
    stroke(0,255,0);
  
 triangle(270, 280, 255, 205, 240,280);
}
