#Funciones
sub coche {
	
	#parametros
	$resultado = "";
	(%argumentos) = @_;
	%default = ("color" => "negro", "puertas" => 5, "motor" => 1000);
	
	#argumentos
	foreach $clave(keys %default) {
		defined($argumentos{$clave}) || ($argumentos{$clave} = $default{$clave});
		$resultado .= $clave . ": " . $argumentos{$clave} . "\n";
	}
	return $resultado;
}

#Prints
print coche() . "\n";
print coche("color" => "azul", "puertas" => 3, "motor" => 2000) . "\n";
print coche("color" => "branco", "puertas" => 4) . "\n";
