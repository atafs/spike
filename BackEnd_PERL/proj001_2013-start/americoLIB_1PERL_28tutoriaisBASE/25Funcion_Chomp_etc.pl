#chomp
$string = "Mi pais";
chomp($string);
print $string . "\n";

#chop: elimina o ultimo elemento de uma string
$string = "12345";
chop($string);
print "\n" . $string . "\n";

#chr: devolve o caracter da tabela ASCII
print "\n" . chr(48) . "\n";

#crypt: encripta a string passada no 1º parametro, atraves dos dados do 2º
$string = "programador";
print "\n" . crypt($string, "33424234") . "\n";

#index: devolve a posicao da 1º ocorrencia
$string = "Hola amigo sim";
print "\n" . index($string, "amigo", 0) . "\n";

#length: 
print "\n" . length($string) . "\n"; 