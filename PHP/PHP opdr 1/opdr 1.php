<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login page</title>
</head>
<body>
    <h1>Login</h1>
    <form action="login.php" method="post">
       

        <label for="voornaam">Voornaam:</label>
        <input type="text" id="voornaam" name="voornaam"><br><br>

        <label for="tussenvoegsel">Tussenvoegsel:</label>
        <input type="text" id="tussenvoegsel" name="tussenvoegsel"><br><br>

        <label for="achternaam">Achternaam:</label>
        <input type="text" id="achternaam" name="achternaam"><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email"><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br><br>
       
        <input type="submit" value="Login">
    </form>
</body>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $voornaam = $_POST["voornaam"];
    $tussenvoegsel = $_POST["tussenvoegsel"];
    $achternaam = $_POST["achternaam"];
    $email = $_POST["email"];
    $password = $_POST["password"];

    echo "Welkom, " . $voornaam . " " . $tussenvoegsel . " " . $achternaam . "!<br>";
    echo "Je email is: " .  \ $email . "<br>";
    echo "Je wachtwoord is: " . $password;
}   