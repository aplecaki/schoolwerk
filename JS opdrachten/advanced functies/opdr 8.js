function applyToEach(functie, array) {
  array.forEach((element, index, arr) => {
    functie(element, index, arr);
  });
}