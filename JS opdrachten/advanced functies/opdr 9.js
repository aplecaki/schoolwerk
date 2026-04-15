let animePersonages = ["Naruto Uzumaki", "Monkey D. Luffy",
"Goku", "Sailor Moon", "Spike Spiegel","goku"]; 
console.log(animePersonages.find(personage => personage === "Goku"));
// de tweede goku is niet gevonden omdat de find methode alleen de eerste match teruggeeft.//