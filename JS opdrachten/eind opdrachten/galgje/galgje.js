
const word = "javascript";
let guessed = [];
let attempts = 10;

const wordEl = document.getElementById("word");
const attemptsEl = document.getElementById("attempts");
const messageEl = document.getElementById("message");
const guessInput = document.getElementById("guessInput");
const guessButton = document.getElementById("guessButton");

function updateWord() {
    let display = "";
    for (let letter of word) {
        display += guessed.includes(letter) ? letter + " " : "_ ";
    }
    wordEl.textContent = display;
}

function updateAttempts() {
    attemptsEl.textContent = "Attempts left: " + attempts;
}

guessButton.addEventListener("click", () => {
    const guess = guessInput.value.toLowerCase();
    guessInput.value = "";

    if (!guess || guess.length !== 1) return;

    if (!guessed.includes(guess)) {
        guessed.push(guess);

        if (!word.includes(guess)) {
            attempts--;
        }
    }


    updateWord();
    updateAttempts();

   
    if ([...word].every(l => guessed.includes(l))) {
        messageEl.textContent = "You win!";
        guessButton.disabled = true;
    }

    if (attempts <= 0) {
        messageEl.textContent = "You lose! Word was: " + word;
        guessButton.disabled = true;
    }
});

updateWord();
updateAttempts();
