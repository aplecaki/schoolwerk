class Persoon {
  String name;
  int age;
  String gender;


  public Persoon(String name, int age, String gender) {
    this.name = name;
    this.age = age;
    this.gender = gender;
  }


  public void tooninformatie() {
    println("Name: " + name);
    println("Age: " + age);
    println("Gender: " + gender);
  }
}

void setup() {

  Persoon p = new Persoon("Jan", 30, "Man");


  p.tooninformatie();
}
