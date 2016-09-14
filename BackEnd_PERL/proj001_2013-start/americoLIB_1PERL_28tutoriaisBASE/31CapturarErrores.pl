#capturar errores - eval()

#funcion para dividir
sub division {
	($a, $b) = @_;
	return $a/$b;
}

#funcion para inicial el programa
sub init {
	print "\n\n* Division por ZERO *\n\n";
	
	print "Insere o primeiro numero: \n";
	$numero1 = <STDIN>;
	
	print "Insere o segundo numero: \n";
 	$numero2 = <STDIN>;
 	
 	$resultado = eval{division($numero1, $numero2)};
 	
	if($@) {
		print "ERROR: No es posible dividir entre zeros. \n";
		init();
	}
	else {
		print "El resultado de la division es: " . $resultado . "\n";
	}
}

#main
print "Teste de la Funcion Division: \n";
print "12/2 = " . division(12,2) . ";";
init();
