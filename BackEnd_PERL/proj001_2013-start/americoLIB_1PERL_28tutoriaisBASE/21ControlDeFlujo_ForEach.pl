#For Each

#Array
@lista = (0,1,2,3,4,5);

#Cicle
foreach $element (@lista) {
	print "\n" . $element . ", ";
}

print "\n \n";

#utilizar tanto una clave com su valores associativos

#Hash
%associativo = ("uno" => 1, "dos" => 2, "tres" => 3);

#Cicle
foreach $element (keys %associativo) {
	print "\n" . "Clave: " . $element . " | Valor: " . $associativo{$element} . "\n";
}
