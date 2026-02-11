int[] getallen = {10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, 2, 3, 4, 5};


void setup(){
  println("aantal keer het getal 10 komt: " + totaal(10));
}



int totaal(int getal) {
  int aantal = 0;
  for (int i = 0; i < getallen.length; i++) {
    if (getallen[i] == getal) {
      aantal++;
    }
  }
  return aantal;
}
