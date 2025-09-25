float a = 0.5; //komma getallen
int x = 3; //hele getallen
String textVariabele = "hallo"; //werkt hetzelfde als float maar dan voor letters 


// > groter dan
// < kleiner dan
// >= groter of gelijk aan
// <= kleiner of gelijk aan


if (x > 5 && textVariabele == "hi") {
//code block als if statement waar (true) is
} else {
//als het niet waar is
}

println("..."); // plaatst een stuk text in de console 

//als a EN b waar zijn dan is het waar: if (a && b)
//als a OF b waar zijn dan is het waar: if (a || b)


// hele formule om het hoeveelheid voor hetzelfde getal te printen


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

// simpel arrays

String[] abc = new String[26];
int[] abc = {10, 15, 7, 8, 5, 19, 27};
int[] a = new int[10];

void setup(){
  a[0] = 15;
  a[1] = 12;
  a[2] = 1;
  a[3] = 7;
  a[4] = 3;
  a[5] = 18;
  a[6] = 25;
  a[7] = 11;
  a[8] = 9;
  a[9] = 14;
println(a);
}

//een void setup

void gemiddlde(){
  float getal1 = 2;
  float getal2 = 12;
  float gemiddlde = (getal1 + getal2) / 2;
  println(gemiddlde);
}


void setup(){
 gemiddlde();
 
 
 // een method
 
 
 int getal1 = 30;

void gemiddlde(float getal1, float getal2){
  float gemiddlde = (getal1 + getal2) / 2;
  println(gemiddlde);
}


void setup(){
  gemiddlde(getal1, 27);
  gemiddlde(20, 25);
}
void draw(){

}

// vormen met void 

void draw(){
  background(255,255,0);
  triangular(100,50,150,100,50,100);
  
  
}
void triangular(int a, int b, int c, int d, int e, int f)
{triangle(a,b,c,d,e,f);
}


// een for loop

for (int i = 0; i < 10; i++){}

// een chessboard?

size(250, 250);
background(255, 255, 255);
int xWaarde = 20;
int yWaarde = 20;
for (int i = 0; i < 10; i++) {
  for (int j = 0; j < 10; j++) { if ((i + j) % 2 == 0) {fill(0,0,0);}else{fill(255,255,255);
  }
    rect(xWaarde, yWaarde*1, 20, 20);
    yWaarde = yWaarde + 20;
  }
  yWaarde =  20;
  xWaarde = xWaarde + 20;
}

// tafels met for loop

int tafel = 8;
for (int i = 0; i < 11; i++) {
  println( i *  tafel);
}

// switch setup

int leeftijd = 18;

switch(leeftijd){
  case 1:
  println("net begonnen aan het leven");
  break;
  case 2:
  case 3:
  println("baby");
  break;
  case 4:
  case 5:
  println("kleuter");
  break;
  case 6:
  case 7:
  case 8:
  case 9:
  case 10:
  case 11:
  case 12:
  case 13:
  case 14:
  case 15:
  println("kind");
  break;
  case 16:
  case 17:
  println("bijna volwassen");
  break;
  case 18:
  println("volwassen");
  break;
  default:
  println("onbekend");
  break;
}

// if statements

int a = 2;
if(a == 2){
  println("ja de variable is 2");
}
