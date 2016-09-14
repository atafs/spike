/*
FUNCTION: ligar()
AUTHIR: Americo
DESCRIPTION: presents the name of the user and shows 2 images
*/
function ligar() {
    //VARIABLES
    var nomeUser = window.prompt("WHAT IS YOUR NAME: ");
    //PRINT POPUP
    alert("NICE MEETING YOU = " + nomeUser);
    //CHANGE IMAGE
    document.getElementById("americoLIB").src = "img/javascript1.png";
}