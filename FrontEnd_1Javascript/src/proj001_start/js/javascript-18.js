/*
    METHOD: calcularIMC
    AUTHOR: Americo Tomas
    DESCRIPTION: get the value os IMC
*/
function calcularIMC() {
    var formulario = document.getElementById("formulario");

    //GET VALUES FROM FORM BY NAME
    var kilos = formulario.kilos.value;
    var metros = formulario.metros.value;
    var centimetros = formulario.centimetros.value;

    //PRINT TOCHECK VALUES
    /*
    alert("kilos = " + kilos);
    alert("metros = " + metros);
    alert("centimetros = " + centimetros);
    */

    //PARSE STRING TO NUMBER
    kilos = +kilos;
    metros = +metros;
    centimetros = +centimetros;

    //GET HEIGHT USING METROS AND CENTIMETROS
    var altura = (metros * 100 + centimetros) / 100;//convert cm to m
    var imc = kilos / (altura * altura);

    //PRINT TOCHECK VALUES
    /*
    alert(typeof(kilos));
    alert("altura = " + altura);
    alert("imc = " + imc);
    */

    //PLACE VALUE IN IMC FIELD
    formulario.imc.value = imc.toFixed(2);//two decimal

    //SELECT VALUE
    if(imc < 20) {
        formulario.result.value = "Abaixo do peso";
    } else if(imc > 20 && imc <= 25) {
        formulario.result.value = "peso IDEAL";
    } else if(imc > 25 && imc <= 30) {
        formulario.result.value = "excesso peso";
    } else if(imc > 30 && imc <= 35) {
        formulario.result.value = "obesidade moderada";
    } else if (imc > 35 && imc <= 40) {
        formulario.result.value = "obesidade severa";
    } else if (imc > 40 && imc <= 45) {
        formulario.result.value = "obesidade morbida";
    } else if (imc > 45 && imc <= 50) {
        formulario.result.value = "obesidade morbida";
    } else if (imc > 50) {
        formulario.result.value = "obesidade SUPER";
    }
}

/*
    METHOD: ligar
    AUTHOR: Americo Tomas
    DESCRIPTION: get new image ti replace it
*/
function mudarImg() {
    document.getElementById("americoLIB").src = "img/imc1.jpg";
}

function mudarImgDeVolta() {
    document.getElementById("americoLIB").src = "img/imc.jpg";
}

