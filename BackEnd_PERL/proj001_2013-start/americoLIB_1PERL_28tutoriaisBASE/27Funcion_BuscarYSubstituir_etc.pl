#exemplo de solo un: substituir
$string = "hola hola hola hola";
$string =~ s/hola/adios/;
print $string . "\n"; 

#substituir todas as repetidas
$string = "hola hola hola hola";
$string =~ s/hola/adios/g;
print $string . "\n"; 

#substituir todas as repetidas, excepto as maiusculas
$string = "hola Hola HOLA hola";
$string =~ s/hola/amigo/gi;
print $string . "\n"; 

#com Array
@buscar = ("a", "e", "i", "0", "u");
@substituir = (1,2,3,4,5);

$string = "En este string se reemplazam las vocales por los numeros";

for($x = 0; $x < @buscar; $x++) {
	$_buscar = $buscar[$x];
	$_substituir = $substituir[$x];
	
	$string =~ s/$_buscar/$_substituir/g;
}

print $string . "\n";
