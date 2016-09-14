#Control de flujo

#pergunta el utilizador:
print "\n" . "Por favor, ingrese un numero de 1 al 100 ...";
$ingresa = <STDIN>;

#chomp que eliminar la terminación de una cadena
chomp($ingresa);

if($ingresa >= 1 && $ingresa <= 100) {
	print "\n" . "El numero esta correcto, dentro del intervalo" . "\n";	
}
elsif ($ingresa > 100) {
	print "\n" . "ERROR: el numero supera el limite" . "\n";
}
else {
	print "\n" . "Por favor, introduza un valor valido..." . "\n";
}