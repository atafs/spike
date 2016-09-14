#funciones uteis para PERL

#scalar: devolve o total de elementos de um Array
@nombres = ("pepito", "roberto", "juanito");
print "\nTotal de elementos de Array: " . scalar(@nombres) . "\n";

#shift: retira o primeiro elemento do Array
@nombres = ("pepito", "roberto", "juanito", "alvaro");
print "\nElemento eleminado: " . shift(@nombres) . "\n";

#imprimir todos os elementos de um Array
print "shift: " . "\n";
foreach(@nombres) {
	print $_ . ", ";
}
print "\n\n";

#sort: ordenar elementos
@nombres = ("pepito", "roberto", "juanito", "alvaro");
@ordenar = sort(@nombres);

#imprimir Array
print "sort:" . "\n";
foreach(@ordenar) {
	print $_ . ", ";
}
print "\n\n";

#split: divide uma string
$string = "uno-dos-tres-quatro-cinco";
print "string: " . "\n";
print $string . "\n";

@numeros = split("-", $string);

#ciclo
print "split: " . "\n";
foreach(@numeros) {
	print $_ . ", ";
}
print "\n\n";

#unshift: permite acrescentar novos elementos ao inicio do Array
@casa = ("mesa", "silla", "television");
unshift(@casa, "espejo");

print "unshift: " . "\n"; 
foreach(@casa) {
	print $_ . ", ";
}
print "\n\n";

#unshift: Array
@casa = ("mesa", "silla", "television");
@agregar = ("espejo", "cocina");
unshift(@casa, @agregar);

print "unshift: " . "\n"; 
foreach(@casa) {
	print $_ . ", ";
}
print "\n\n";


