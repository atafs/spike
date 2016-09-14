#Listas multidimensionales

#1º: [qual dos Arrays] e o 2º: [qual a posicao desse Array]
@alimentos = (["Platanos", "Peras"], ["Cerdo", "Pollo", "Ternera"]);
print "\n" . $alimentos[1][2] . "\n";
print "\n" . $alimentos[0][1] . "\n";

#Arrays dentro de Arrays
@alimentos1 = (["Platanos", ["Naranjas", "limones"]], ["Cerdo", "Pollo", "Ternera"]);
print "\n" . $alimentos1[0][1][1] . "\n";
