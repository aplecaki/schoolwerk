int mijngetal;

void setup(){
  mijngetal = method(10,2);
  println(mijngetal);
  mijngetal = method(15,5);
  println(mijngetal);
}

void draw(){
  
}

int method(int getal1, int getal2){
  int gemiddlde = (getal1 + getal2) / 2;
  return gemiddlde;
}
