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

