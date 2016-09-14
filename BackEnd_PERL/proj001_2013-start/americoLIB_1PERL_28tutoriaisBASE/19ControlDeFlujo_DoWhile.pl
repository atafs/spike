#Do While
#estrutura basica: variable x


@profesiones = ("Carpintero", "Zapatero", "Electricista", "Fontanero");
$x = 0;


do {
	print $profesiones[$x] . "\n";
	$x++;
}
while($x <= @profesiones);