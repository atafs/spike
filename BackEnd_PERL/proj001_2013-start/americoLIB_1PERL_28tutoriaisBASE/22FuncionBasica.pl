#Funciones: simplificar tarefas repetitivas
#palavra reservada: sub

#Funcion
sub mensaje {
	return "Hola. Estou haciendo mi primera funcion";
}

#Funcion con parametros
sub sum {
	($numero1, $numero2) = @_;
	return $numero1 + $numero2;
}

#Prints
print mensaje() . "\n";
print sum(12,4) . "\n";