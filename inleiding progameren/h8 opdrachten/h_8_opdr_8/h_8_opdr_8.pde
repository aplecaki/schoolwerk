int a = 0;
int b = 1;
int teller = a + b;

for (int i = 10; i > 1; i--) {
  
  println(teller);
  a = b;
  b = teller;
  teller = a + b;
  
}
