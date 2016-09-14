/*
    METHOD: ligar
    AUTHOR: Americo Tomas
    DESCRIPTION: get new image ti replace it
*/
function changeImg() {
    document.getElementById("americoLIB").src = "img/javascript1.png";
}

//LOOPS FOR *********************************
//###########################################
/*
var text = "LOOP";
for (var i = 0; i < 10; i++) {
    text += " => " + i;  
}
alert(text);
*/

//###########################################
/*
var text = "LOOP";
for (var i = 10; i > 0; i--) {
    text += " => " + i;
}
alert(text);
*/

//###########################################
/*
var text = "LOOP = ";
for (var i = 0; i < 21; i++) {
    //ONLY PAR
    if (i % 2 == 0) {
        //CHECK IF ITS LAST - version02
        if (i == 20) {
            text += i + "; ";
            break;
        }
        text += i + ", ";

        
        //CHECK IF ITS LAST - version01
        //if (i == 20) {
        //   text += i + "; ";
        //} else {
        //    text += i + ", ";
        //}
          
    }   
}
alert(text);
*/

//LOOPS FOR IN (foreach in java EE) *********
//###########################################
/*
var numbers = new Array("one", "two", "three");
for (var i = 0; i < numbers.length; i++) {
    alert(numbers[i]);
}
*/

//###########################################
/*
var numbers = new Array("one", "two", "three");
for (i in numbers){
    alert(numbers[i]);
}
*/

//###########################################
/*
//FORMA DECLARATIVA USANDO FOR IN
var Carro = {
    marca: "NISSAN",
    modelo: "350Z",
    comprimento: "3.345mm",
    velocidade: "320Km/h",
    cavalos: "350cv",
};

for (var props in Carro) {
    alert(props + " = " + Carro[props]);
}
*/

//LOOPS WHILE and DO WHILE ******************
//###########################################
/*
var i = 0;
var text = "WHILE = ";
while(i < 3) {
    text += i + ", ";
    i++;
}
alert(text);
*/

//###########################################

var i = 0;
var text = "DO WHILE = ";
do {
    text += i + ", ";
    i++;
} while (i < 21);
alert(text);



