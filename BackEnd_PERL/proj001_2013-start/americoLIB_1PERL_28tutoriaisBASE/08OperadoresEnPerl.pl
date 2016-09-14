#Expresiones regulares

# =~ si el patrón es encontrado
# !~ si el patr+on NO es encontrado

#1)variable
$variable = "Los politicos son unos mamones";

#condiciones
if($variable !~ /mamones/) {
	print "\n" . "Mamones ha sido encontrado" . "\n";
} 
else {
	print "\n" . "mamones NO ha sido enconrado" . "\n";
}


#2)variable
$variable = 12;
if($variable =~ /^[0-9]+$/) {
	print "\n" . "True" . "\n";
}
else {
	print "\n" . "So de aceita numeros" . "\n";
}


#3)variable
$variable = "Hola 12";
if($variable =~ /^[0-9]+$/) {
	print "\n" . "True" . "\n";
}
else {
	print "\n" . "So de aceita numeros" . "\n";
}
