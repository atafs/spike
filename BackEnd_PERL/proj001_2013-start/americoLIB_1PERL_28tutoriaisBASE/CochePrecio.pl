use CochePrecio;

$CochePrecio = CochePrecio::new();

#prints
print "COLOR:         " . $CochePrecio -> color() . "\n";
print "PUERTAS:       " . $CochePrecio -> puertas(3) . "\n";
print "VELOCIDAD_MAX: " . $CochePrecio -> velocidad_max(300) . "\n";
print "RUEDAS:        " . $CochePrecio -> ruedas() . "\n";
print "PRECIO:        " . $CochePrecio -> precio() . "\n\n\n";

print "COLOR:         " . $CochePrecio -> color("Blanco") . "\n";
print "PUERTAS:       " . $CochePrecio -> puertas(5) . "\n";
print "VELOCIDAD_MAX: " . $CochePrecio -> velocidad_max(220) . "\n";
print "RUEDAS:        " . $CochePrecio -> ruedas() . "\n";
print "PRECIO:        " . $CochePrecio -> precio() . "\n\n\n";