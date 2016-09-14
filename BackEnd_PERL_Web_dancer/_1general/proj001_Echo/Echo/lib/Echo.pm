package Echo;
use Dancer ':syntax';

our $VERSION = '0.1';

get '/' => sub {
  my $q = param('q');
  if (defined $q) {
    return "You said: $q";
  }
    template 'index_test';
};

true;
