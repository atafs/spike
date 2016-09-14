use Coche;

#instantiate object
$coche = Coche::new();

#prints
print "COLOR:         " . $coche -> color() . "\n";
print "PUERTAS:       " . $coche -> puertas() . "\n";
print "VELOCIDAD_MAX: " . $coche -> velocidad_max() . "\n";
print "RUEDAS:        " . $coche -> ruedas() . "\n\n\n";


print "COLOR:         " . $coche -> color("Rojo") . "\n";
print "PUERTAS:       " . $coche -> puertas(3) . "\n";
print "VELOCIDAD_MAX: " . $coche -> velocidad_max(320) . "\n";
print "RUEDAS:        " . $coche -> ruedas() . "\n\n\n";
