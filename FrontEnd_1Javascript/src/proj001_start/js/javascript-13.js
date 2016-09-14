/*
FUNCTION: OPERADORES DE BITES
*/

//OPERADOR TERNARIO
/*
var idade = 21;
var sexo = "masculino";
var nacionalidade = "portugues";
var x = (idade >= 18) ? "MAIOR DE IDADE" : "MENOR DE IDADE" 
alert("IDADE = " + x);
*/

//OPERADOR DELETE E CRIAR OBJECTO (verificar dentro de um ojecto)
/*
Pessoa = {
    nome: "Americo Tomas"
}
alert(Pessoa.nome);
delete Pessoa.nome;
alert(Pessoa.nome);
*/

//OPERADOR IN (verificar propriedades dentro de um ojecto)
/*
Pessoa = {
    nome: "Americo Tomas"
}
alert("nome" in Pessoa);
alert("email" in Pessoa);
*/

//OPERADOR INSTANCEOF (determina se e de um tipo expecifico)
/*
var idade = new Number(31);
alert(idade instanceof Number);
alert(idade instanceof String);
*/

//OPERADOR NEW (criar novos objectos)
/*
alert("TITULO DA WINDOW = " + this.document.title);
*/

//OPERADOR TYPEOF (tipo de dado)
alert(typeof (3));
alert(typeof (true));
alert(typeof (function () { }));





