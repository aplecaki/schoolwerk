const studenten = [
  { naam: 'Jan', cijfer: 7 },
  { naam: 'Piet', cijfer: 8 },
  { naam: 'Klaas', cijfer: 6 },
  { naam: 'Marie', cijfer: 9 }
];

const goedeStudenten = studenten.filter(student => student.cijfer >= 8).map(student => student.naam); console.log(goedeStudenten);