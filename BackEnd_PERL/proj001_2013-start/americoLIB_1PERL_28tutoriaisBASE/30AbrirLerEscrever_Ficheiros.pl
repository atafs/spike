#funciona bem em notpad++

#MODO ESCRITURA: abrir e fechar ficheiro
#"+>" - acrescentar na mesma linha
#">>" - acrescentar em linhas seguintes

open(ARCHIVO, ">>", "file/archivo.txt");
$escribir = "Incluyendo contiendo al ficheiro \n";
print ARCHIVO $escribir;
print "\nJa esta a criar e a imprimir no ficheiro.\n"; 

close(ARCHIVO);

#MODO LEITURA
open(ARCHIVO, "<", "file/archivo.txt");

print "\n";
while(<ARCHIVO>) {
	print $_;
}

print "\nJa esta a imprimir no ecra.\n"; 
close(ARCHIVO);