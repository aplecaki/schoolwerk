void setup() {
  BankAccount mijnRekening = new BankAccount("NL01BANK198432798175987", "Enrico Muzo", 100);


  println("== Bankgegevens ==");
  mijnRekening.toonGegevens();

  
  float bedrag = -10;
  boolean success = mijnRekening.transfer(bedrag);

  
  println("\n== Transferinformatie ==");
  mijnRekening.toonLaatsteTransfer(success, bedrag);
}

class BankAccount {
  float saldo;
  String eigenaar;
  String rekeningnummer;

   BankAccount(String rekeningnummer, String eigenaar, float saldo) {
    this.rekeningnummer = rekeningnummer;
    this.eigenaar = eigenaar;
    this.saldo = saldo;
  }
  
  boolean transfer(float amount) {
    if (this.saldo + amount < 0) {
      return false;
    }
    this.saldo += amount;
    return true;
  }
    void toonGegevens() {
    println("Rekeningnummer: " + this.rekeningnummer);
    println("Eigenaar: " + this.eigenaar);
    println("Saldo: €" + this.saldo);
  }
  void toonLaatsteTransfer(boolean succes, float bedrag) {
  if (bedrag >= 0) {
    println("Gestort bedrag: €" + bedrag);
  } else {
    println("Opgenomen bedrag: €" + -bedrag);
  }

  if (succes) {
    println("Transfer succesvol.");
  } else {
    println("Transfer mislukt: onvoldoende saldo.");
  }

  println("Huidig saldo: €" + this.saldo);  
}
}
