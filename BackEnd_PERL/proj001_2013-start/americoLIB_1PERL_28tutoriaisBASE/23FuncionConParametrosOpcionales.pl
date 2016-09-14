#Funcion con parametros ocpionales

#Funcion
sub parametro_opcional {
	($obligatorio, $Opcionale) = @_;
	
	#Saber se o parametro opcionale esta definido
	if(!defined($Opcionale)) {
		$Opcionale = "EVITAR ERROR: Valor por defecto";
	}
	
	return $obligatorio . ": " . $Opcionale . "\n";
}

#Prints
print "\n" . parametro_opcional("Hola. Soy o parametro Opcionales", "Hola. Yo soy el parametro Obligatorio"). "\n";
print "\n";
print "\n" . parametro_opcional("Hola. Soy o parametro Opcionales");

