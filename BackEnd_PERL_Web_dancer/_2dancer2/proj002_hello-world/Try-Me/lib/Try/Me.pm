package Try::Me;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/welcome' => sub {
    return 'Hello World of DANCER2';
};

true;
