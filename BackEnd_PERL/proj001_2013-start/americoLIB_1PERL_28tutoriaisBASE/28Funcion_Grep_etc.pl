#grep: pesquisar partes especificas
@nombres = ("Alberto", "Mario", "Roberto", "Humberto");
@coincidencias = grep(/erto/, @nombres);

foreach (@coincidencias) {
	print $_ . "\n";
}

#join: junta tudo
@nombres = ("Alberto", "Mario", "Roberto", "Humberto");
print join("-", @nombres) . "\n";

#pop: extrai o ultimo elemento de um array
@nombres = ("Alberto", "Mario", "Roberto", "Humberto");
print "Elemento eliminado..." . pop(@nombres) . "\n";

foreach(@nombres) {
	print $_ . ", ";
}
print "\n";

#push: permite acrescentar novos elementos ao final do Array
@elementos = ("casa", "coche", "puerta", "radio");
push(@elementos, "Televisor");

foreach(@elementos) {
	print $_ . ", ";
}
print "\n";

#push: um Array noutro
@elementos = ("casa", "coche", "puerta", "radio");
@agregar = ("Cocina", "Dormitorio");

push(@elementos, @agregar);

foreach(@elementos) {
	print $_ . ", ";
}
print "\n";

#reverse: reverte a posicao dos elementos
@numeros = (9,8,7,6,5,4,3,2,1,0);
print reverse(@numeros);
