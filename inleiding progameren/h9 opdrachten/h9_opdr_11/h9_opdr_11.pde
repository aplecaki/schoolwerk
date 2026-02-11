void setup() {
  size(500, 500);
}

void draw() {
  background( 255, 255, 0);
  tekenboom(200,200,120);
  tekenboom(300,300,120);
  tekenboom(100,100,120);
  tekenboom(150,150,120);
  tekenboom(250,250,120);
  

}


void tekenboom(int pos1, int pos2, int pos3){
 pos3 = pos2 - 20;

fill(150,75,0);
stroke(150,75,0);
 rect( pos2,pos2 -40,10,100);
 noFill();
 fill(0,255,0);
    stroke(0,255,0);
  
 triangle(pos1 + 30, pos1 + 30, pos3 + 25, pos3 - 60, pos3 - 15, pos3 + 45);
}
