/*
    METHOD: changeImg
    AUTHOR: Americo Tomas
    DESCRIPTION: get new image to replace it
*/
function changeImg() {
    document.getElementById("americoLIB").src = "img/javascript1.png";
}

/* */
function divide(x, y) {
    //PRINT
    alert("divide (" + x + "/" + y + ") = " + x / y);
    //RETURN
    return x / y;

}
//SCRIPT IF ELSE(DESCOMENTAR /* */ PARA TESTAR CODIGO E SUA UTILIZACAO)

/*
alert(divide(7, 2));
*/

/*
var inputData = 21;
if ((inputData % 2) == 0) {
    alert("PAR")
} else {
    alert("IMPAR")
}
*/

/*
var inputDataIdade = 10;
if (inputDataIdade < 11) {
    alert("CRIANCA")
} else {
    alert("ADULTO")
}
*/

/*
var inputDataPassou = false;
if (inputDataPassou) {
    alert("PESSOA CONTRACTADA ;-) ")
} else {
    alert("NAO DESTA VEZ. TENTE DE NOVO ;-) ")
}
*/

/*
var inputDataIdade = 35;
if (inputDataIdade <= 11) {
    alert("CRIANCA")
} else if (inputDataIdade > 11 && inputDataIdade <= 16) {
    alert("PRE ADOLESCENTE")
} else if (inputDataIdade > 16 && inputDataIdade <= 21) {
    alert("ADOLESCENTE")
} else if (inputDataIdade > 21 && inputDataIdade < 60) {
    alert("ADULTO")
} else {
    alert("MELHOR IDADE ;-)")
}
*/

/*
var inputDataNota = 6;
if (inputDataNota >= 7) {
    alert("PASSOU")
} else {
    alert("TENTE DE NOVO...")
    //NESTED
    if (inputDataNota == 6) {
        alert("PODE IR A MELHORIA ;-)");
    }
}
*/

//SCRIPT SWITCH(DESCOMENTAR /* */ PARA TESTAR CODIGO E SUA UTILIZACAO)
/*
var inputSexo = "M";
switch (inputSexo) {
    case "M":
        alert("MALE")
        break;
    case "F":
        alert("FEMALE")
        break;
    default:
        alert("INDEFINED")
}
*/


//WITHOUT BREAK ALL THE TIME
var inputLanguage = "javascript";
switch (inputLanguage) {
    case "java":
    case "c++":
    case "javascript":
    case "c#":
        alert("LINGUAGENS DE PROGRAMACAO")
        break;
    case "sqlserver":
    case "postgresql":
    case "oracle":
        alert("LINGUAGENS DE BASE DE DADOS")
        break;
    default:
        alert("TECNOLOGIA INDEFINIDA")
}

