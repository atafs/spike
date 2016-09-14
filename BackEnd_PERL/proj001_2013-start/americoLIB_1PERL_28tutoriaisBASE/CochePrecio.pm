#herança (m: modulo)

package CochePrecio;

#agregamos a Heranca a la nueva subClass
use Coche;
@ISA = qw(Coche);

use strict;

#constructor
sub new {
	
	my $self = Coche::new();
	$self -> {PRECIO} = undef; #no principio no se indica ningun precio
	bless $self;
	return $self;
}

sub precio {
	#precio segundo velocidad_max
	#el primer parametro de un metodo es la class
	my $self = shift;
	
	if($self -> {VELOCIDAD_MAX} <= 160) {
		$self -> {PRECIO} = 6000;
	}
	elsif($self -> {VELOCIDAD_MAX} > 160 && $self -> {VELOCIDAD_MAX} <= 220) {
		$self -> {PRECIO} = 12000;
	}
	elsif($self -> {VELOCIDAD_MAX} > 220) {
		$self -> {PRECIO} = 18000;
	}
	else {
		$self -> {PRECIO} = "ERROR: nenhum das opciones correcta.";
	}
	return $self -> {PRECIO};
}

#end
1;