/*
    METHOD: ligar
    AUTHOR: Americo Tomas
    DESCRIPTION: get new image to replace it
*/
function changeImg() {
    document.getElementById("americoLIB").src = "img/javascript1.png";
}

//EXCEPTIONS *********************************
//1-###########################################

/*
try {
    var x = a;
    var b = x + 10;
    alert(b);

} catch(e) {
    alert(e.name + "; var = " + e.message);
}
*/

//2-###########################################

/*
var x = prompt("Informe numero maior que 10");
try {
    if(x < 10) {
        //LANCAR UMA STRING COMO ERRO
        throw "numero menor que 10";
    }
    alert("NUMERO: " + x);

} catch (e) {
    alert("CATCH = " + e);
}
*/

//3-###########################################

/*
var Carro = {
    marca : "Nissan",
    modelo : "350Z",
    potencia : {
        cavalos : "350",
        velocidade : "320Km/h"
    }
};

//DAR O CAMINHO TODO
alert("CAMINHO TODO: " + Carro.potencia.velocidade);
alert("CAMINHO TODO: " + Carro.potencia.cavalos);

//SCOPE(filtro)
with(Carro.potencia) {
    alert("WITH: " + velocidade);
    alert("WITH: " + cavalos);
}
*/

//OBJECTS JAVASCRIPT***************************
//1-OBJECT STRING #############################
/*
var nome = "AmericoTomas";

//PRINTS - length
alert("typeof=" + typeof (nome) + "\n");
alert("length=" + nome.length + "\n");
alert("new length=" + (new String(nome)).length + "\n");

//PRINTS - touppercase
alert("nome=" + nome + "\n");
alert("nome touppercase=" + nome.toUpperCase() + "\n");
*/

//2-OBJECT BOOLEAN #############################
//CONCEPT
//"Zero, null, NaN e a String vazia são inerentemente false"
//"Todo o resto é inerentemente true"

//VARIABLES
var boolean = true;
var booleanNew = new Boolean(0);

//PRINTS
/*
alert("boolean=" + typeof(boolean));
alert("booleanNew=" + typeof(booleanNew));
*/

/*
alert("booleanNew=" + booleanNew);
alert("booleanNew valueOf=" + booleanNew.valueOf());
alert("boolean valueOf typeof=" + typeof(boolean.valueOf()));
alert("booleanNew valueOf typeof=" + typeof(booleanNew.valueOf()));
*/

/*
alert("boolean toString=" + typeof(boolean.toString()));
alert("booleanNew toString=" + typeof(booleanNew.toString()));
alert("boolean toString=" + (boolean.toString()));
alert("booleanNew toString=" + (booleanNew.toString()));
*/

//3-OBJECT NUMBER #############################
//VARIABLES
var numberInt = 120;
var numberDouble = 120.35;
var numberNew = new Number("951.36457578");

//PRINTS
/*
alert("numberInt=" + typeof (numberInt));
alert("numberDouble=" + typeof (numberDouble));
alert("numberNew=" + typeof (numberDouble));
*/

/*
alert("numberInt=" + (numberInt));
alert("numberDouble=" + (numberDouble));
alert("numberNew=" + (numberDouble));
*/

/*
alert("Number.MAX_VALUE=" + Number.MAX_VALUE);
alert("Number.MIN_VALUE=" + Number.MIN_VALUE);
alert("Number.NaN=" + Number.NaN);
alert("Number.NEGATIVE_INFINITY=" + Number.NEGATIVE_INFINITY);
alert("Number.POSITIVE_INFINITY=" + Number.POSITIVE_INFINITY);
*/

/*
//CIENTIFIC NOTATION
alert("numberNew round=" + numberNew.toFixed(3));
alert("numberNew toPrecision all=" + numberNew.toPrecision());
alert("numberNew toPrecision=" + numberNew.toPrecision(2));
alert("numberNew toExponential=" + numberNew.toExponential());
*/

//4-OBJECT STRING #############################
//API: http://www.w3schools.com/jsref/jsref_obj_string.asp

//VARIABLES
var string = new String("OBJECT, TExT OF THE STRING, OBJECT text");
var re = /x/;
var re1 = /[a-e]/;

/*
//PRINTS HTML5
document.writeln("string=" + string + " <br/>");
document.writeln("string.length=" + string.length + " <br/>");
document.writeln("string.charAt=" + string.charAt() + " <br/>");
document.writeln("string.charCodeAt=" + string.charCodeAt(string.length - 1) + " <br/>");
document.writeln("string.concat=" + string.concat(" => JAVASCRIPT CONCATENATION OBJECT") + " <br/>");
//ASCII CODE
document.writeln("string.fromCharCode=" + String.fromCharCode(115, 123, 234) + " <br/>");
//INDEX
document.writeln("string.indexOf=" + string.indexOf("OBJECT") + " <br/>");
document.writeln("string.lastIndexOf=" + string.lastIndexOf("OBJECT") + " <br/>");

//REGULAR EXPRESSION
document.writeln("string.match re=" + string.match(re) + " <br/>");
document.writeln("string.match re1=" + string.match(re1) + " <br/>");
document.writeln("string.replace=" + string.replace("text", "txt") + " <br/>");
document.writeln("string=" + string + " <br/>");

//SUBSTRING
//BEGIN AND END OF STRING
document.writeln("string.substring=" + string.substring(0, 20) + " <br/>");
document.writeln("string.substr=" + string.substr(1, 8) + " <br/>");
document.writeln("string.slice=" + string.slice(0, 10) + " <br/>");
document.writeln("string.split=" + string.split(",", [2]) + " <br/>");

document.writeln("string.split=" + string.toUpperCase() + " <br/>");
document.writeln("string.split=" + string.toLocaleLowerCase() + " <br/>");

document.writeln("string.big=" + string.big() + " <br/>");
document.writeln("string.blink=" + string.blink() + " <br/>");
document.writeln("string.sup=" + string.sup() + " <br/>");
document.writeln("string.strike=" + string.strike() + " <br/>");
document.writeln("string.italics=" + string.italics() + " <br/>");
document.writeln("string.small=" + string.small() + " <br/>");
document.writeln("string.link=" + string.link("https://www.google.pt") + " <br/>");
document.writeln("string.fontcolor=" + string.fontcolor("blue") + " <br/>");
*/

//5-ARRAY #############################
//VARIABLE
var paises = new Array("Portugal", "Russia", "India", "China", "Brasil", "Portugal");
var s = "Acai"

/*
//PRINTS POPUP
alert("paises=" + paises);
alert("paises=" + paises[0]);
alert("paises.length=" + paises.length);

//CHANGE VALUE
paises[1] = "Brazil";
alert("paises=" + paises);
*/

/*
//LOOP FOR
for (var i = 0; i < paises.length; i++) {
    document.writeln("paises.lastIndexOf Portugal=" + paises.lastIndexOf("Portugal") + " <br/>");
}
document.writeln(" <br/>");

//INDEX
document.writeln("paises.indexOf Portugal=" + paises.indexOf("Portugal") + " <br/>");
document.writeln("paises.indexOf India=" + paises.indexOf("India") + " <br/>");
document.writeln("paises.lastIndexOf Portugal=" + paises.lastIndexOf("Portugal") + " <br/>");

//SINTAXE LITERAL
var paises2 = ["Portugal", "Russia", "India", "China", "Brasil", "Portugal"];
var frutas2 = ["Banana", "Maca", "Laranja", "papaia", "manga"];
var pessoas2 = ["Americo", "Tomas", "Ana", "Batalha"];

var s = "Americo Tomas";
var S = new String("sssss");

//LOOP
for (var i = 0; i < s.length; i++) {
    document.writeln("s=" + s[i] + "; ");
}
document.writeln(" <br/>");

//ORDER,...
document.writeln("paises.reverse=" + paises.reverse() + " <br/>");
document.writeln("paises.sort=" + paises.sort() + " <br/>");
document.writeln("paises.join=" + paises.join(" === ") + " <br/>");
document.writeln("paises.concat=" + paises.concat("USA", "Suisse") + " <br/>");

document.writeln("frutas2.slice=" + frutas2.slice() + " <br/>");
document.writeln("frutas2.slice=" + frutas2.slice(2, 4) + " <br/>");
document.writeln("frutas2.splice=" + frutas2.splice(2, 2, "Abacate", "Pera", "Maca") + " <br/>");

//FIFO
//ADD IN THE LAST ELEMENT TO THE LIST
document.writeln("pessoas2.push=" + pessoas2.push("Agrela") + " <br/>");
document.writeln("pessoas2=" + pessoas2 + " <br/>");

//REMOVE THE FIRST ELEMENT FROM LIST
document.writeln("pessoas2.shift=" + pessoas2.shift() + " <br/>");
document.writeln("pessoas2=" + pessoas2 + " <br/>");

//REMOVE THE LAST ELEMENT FROM LIST
document.writeln("pessoas2.pop=" + pessoas2.pop() + " <br/>");
document.writeln("pessoas2=" + pessoas2 + " <br/>");

//ADD IN THE FIRST ELEMENT TO THE LIST
document.writeln("pessoas2.unshift=" + pessoas2.unshift("AMERICO") + " <br/>");
document.writeln("pessoas2=" + pessoas2 + " <br/>");
*/

//6-ARRAY ADVANCED####################
//video 28
https://www.youtube.com/watch?v=VEIR7Wb-oAk&index=28&list=PLxQNfKs8YwvEk85FbeXxDnFecAntIQdRf



//TODELETE
//speed: 1.5
//ouvir tv e fazer videos