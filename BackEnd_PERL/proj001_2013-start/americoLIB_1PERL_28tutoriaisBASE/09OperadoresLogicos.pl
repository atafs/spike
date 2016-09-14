#Operadores Logicos

#Tipos de operadores logicos
# &&: AND (las dos condiciones son ciertas)
# ||: OR
# !: NOT

$variable1 = 5;
$variable2 = 4;
$variable3 = 3;
$variable4 = 6;

#1)condiciones
if($variable1 == $variable2 && $variable3 < $variable4) {
	print "\n" . "Es correcto" . "\n";
} 
else {
	print "\n" . "NO es correcto" . "\n";
}

#2)condiciones
if(!($variable1 == $variable2)) {
	print "\n" . "Es correcto" . "\n";
} 
else {
	print "\n" . "NO es correcto" . "\n";
}


