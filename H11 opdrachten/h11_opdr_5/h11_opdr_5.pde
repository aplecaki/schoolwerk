boolean naam;
String[] namen ={"jan", "john", "michael", "peter", "mike"};

void setup(){
  naam = false;
  for(int i = 0; i < namen.length; i++){
    if(namen[i] == "jan"){
      naam = true;}
  }
  println("gevonden");
}
