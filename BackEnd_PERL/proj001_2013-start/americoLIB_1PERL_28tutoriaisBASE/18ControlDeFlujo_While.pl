#while

@elementos = (0,1,2,3,4,5,6,7,8,9);

$delimitador = 10;
$x = 0;

while($x < $delimitador) {
	#print "\n" . $elementos[6] . "\n";
	
	#imprimir um Array:
	print $elementos[$x] . ", ";
	
	#palavra reservada: last
	if($x == 5) {
		last;
	}
	
	#interacione
	$x++;
}

