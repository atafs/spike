#bimmode: mostrar os acentos 
binmode(STDOUT, ":enconding(cp850)");
binmode(STDIN, ":enconding(cp850)");

print "Condición" . "\n";

#lc: devolve a sintring em minusculas
$string = "Hola MUNDO";
print lc($string) . "\n";

#rindex: ultima posicao de uma palavra
$string = "vida vida vida vida";
print rindex($string, "vida") . "\n";

#substr: a partir dos ultimos char, imprimir apenas 3
$string = "hola mundo";
print substr($string, -5, 3) . "\n";

#uc: devolve a string em maiusculas
$string = "hola mundo";
print uc($string);













