package Product;

use strict;
use warnings;

#constructor
sub new{
}

#CONSTRUCTOR -------------------------------
sub new{
    my ($class,$args) = @_;

    #bless is used to bless the reference to the class and return an instance of the class
    my $self = bless {
      serial => $args->{serial},
      name => $args->{name},
      price => $args->{price}
    }, $class;
}

#GETTERS/SETTERS ---------------------------
# get name of the product
sub get_name{
   my $self = shift;
   return $self->{name};
}

# set new name for the product
sub set_name{
   my ($self,$new_name) = @_;
   $self->{name} = $new_name;
}

# get price of the product
sub get_price{
   my $self = shift;
   return $self->{price};
}

# set price for the product
sub set_price{
   my ($self,$new_price) = @_;
   $self->{price} = $new_price;
}
# get serial
sub get_serial{
   my $self = shift;
   return $self->{serial};
}
# set serial
sub set_serial{
   my ($self,$new_price) = @_;
   $self->{price} = $new_price;
}
# return formatted string of the product
sub to_string{
   my $self = shift;
   return "Serial: $self->{serial}\nName: $self->{name}\nPrice: $self->{price}USD\n";
}

# true --------------------------------
1;
