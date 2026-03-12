const button = document.querySelector(".button");
const container = document.querySelector(".container");


var numberOfElements = 0;
button.addEventListener("click", function() {
    const newElement = document.createElement("p");
    newElement.classList.add("container__item");
    numberOfElements++;
    newElement.textContent = numberOfElements;
    container.appendChild(newElement);
    if (numberOfElements === 49) {
    button.disabled = true;}
});

