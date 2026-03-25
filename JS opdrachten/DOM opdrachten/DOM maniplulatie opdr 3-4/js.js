const button = document.getElementById("gooien");

button.addEventListener("click", function() {
    var myarray = [1, 2, 2, 4, 5, 2];
    const randomIndex = Math.floor(Math.random() * myarray.length);
    const result = myarray[randomIndex];
   
    const newElement = document.createElement("p");
    const countElement = document.createElement("p");
   
    newElement.textContent = result;
    newElement.classList.add("result");
    
    countElement.textContent = "Aantal keer " + result + ": " + countNumber(result);
   
    document.getElementById("results").appendChild(newElement);
    document.getElementById("results").appendChild(countElement);
    
      console.log(countNumber2(myarray, 2));
});

function countNumber(n) {
    const results = document.querySelectorAll("p");
    let count = 1;

    results.forEach(p => {
        if (Number(p.textContent) === n) {
            count++;
        }
    });
}

function countNumber2(getallen, numberWeLookFor) {

    let teller = 0;
    for (let index = 0; index < getallen.length; index++) {
        const element = getallen[index];
      
        if (element === numberWeLookFor) {
            teller++;
        }
    }
    return teller;
}
