#For

#Array
@fruta = ("Naranjas", "Limones", "Melones", "Peras", "Platanos");

#Ciclo
for($x = 0; $x < @fruta; $x++){
	print "\n" . "Index: " . $x . ", Valor: " . $fruta[$x] . "\n";
}