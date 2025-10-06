class square {
  int a;
  int b; 
  int c;
  int d;

 
 square(int a, int  b, int  c, int  d) {
   this.a = a;
   this.b = b;
   this.c = c;
   this.d = d;
  
 }
 void draw(){
   rect(a, b, c, d);
   
   
 }
}
void setup(){
  size(400,400);
  square mysquare = new square(50, 50, 50 ,50);
  mysquare.draw();
}
