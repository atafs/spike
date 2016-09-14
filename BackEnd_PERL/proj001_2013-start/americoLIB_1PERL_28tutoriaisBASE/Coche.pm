#modulo(m) Coche: class
package Coche;

#obriga a escrever correctamente a linguagem Perl
use strict;

#constructor
sub new {
	#instanciar objecto
	my $self = {};
	
	#prpriedades
	$self -> {COLOR} = "azul";
	$self -> {PUERTAS} = 5;
	$self -> {VELOCIDAD_MAX} = 240;
	$self -> {RUEDAS} = 4;
	
	#criar e retornar o objecto
	bless $self;
	return $self;
}

sub color {
	
	#verificar se passamos algum argumento a color
	my ($self, $color) = @_;
	$self -> {COLOR} = $color if defined($color);
	return $self -> {COLOR};
}

sub puertas {
	
	#verificar se passamos algum argumento a color
	my ($self, $puertas) = @_;
	$self -> {PUERTAS} = $puertas if defined($puertas);
	return $self -> {PUERTAS};
}

sub velocidad_max {
	
	#verificar se passamos algum argumento a color
	my ($self, $velocidad_max) = @_;
	$self -> {VELOCIDAD_MAX} = $velocidad_max if defined($velocidad_max);
	return $self -> {VELOCIDAD_MAX};
}

sub ruedas {
	my ($self) = @_;
	return $self -> {RUEDAS};
}

#encerrar el modulo
1;





