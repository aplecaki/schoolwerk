

void setup () {
  size(400, 400);
  
}

void draw () {
   background(255, 255, 255);
   drawcircles(200, 10);
}
void drawcircles(int sizeC, int totaal){
  for (int i = 0; i < totaal; i++) {
    ellipse(200 - sizeC/2, 150 - sizeC/7, sizeC, sizeC);
    sizeC -= 20; 
}
}
