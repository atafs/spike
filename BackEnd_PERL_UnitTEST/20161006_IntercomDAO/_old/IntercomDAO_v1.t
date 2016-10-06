use strict;
use warnings;

use Dancer qw(:syntax :tests);

use Test::More;
use Test::MockObject;
use Test::MockModule;
use Test::Exception;

use Carp qw(confess);

use diagnostics;    # this gives you more debugging information

my $class = 'MF::IntercomDAO';
use_ok($class);

sub _intercomdao_class {
    my $mf_request_dao = $class->new(
        base_url => 'base_url',
        username => "username",
        password => "password",
        ua       => _mock_user_agent(),
    );
    return $mf_request_dao;
}

subtest constructor => sub {
    plan tests => 4;

    my $intercom = _intercomdao_class();
    isa_ok( $intercom, $class, 'Can instantiate a MF request data access object. Object' );
    ok( $intercom->base_url eq 'base_url', 'base_url() get' );
    ok( $intercom->username eq 'username', 'username() get' );
    isnt( $intercom->password eq 'password', 'password() get' );
};

subtest _validate_method => sub {
    plan tests => 2;

    my $got = MF::IntercomDAO::_validate_method('POST');
    my $expected = 'POST';
    is( $got, $expected, 'POST is a valid api call in _validate_method()' );
    dies_ok { MF::IntercomDAO::_validate_method('POSTget') } 'POSTget is an invalid api call in _validate_method()';

};

subtest _validate_path => sub {
    plan tests => 1;

    my $got = MF::IntercomDAO::_validate_path('/contact', 'POST');
    my $expected = '/contact';
    is( $got, $expected, '/contact is a valid API for the call POST' );
    # dies_ok { MF::IntercomDAO::_validate_path('/contactxxx', 'POST') } 'url is mandatory for a API call';
};


sub _create_class {
    my $user_agent = _mock_user_agent(
        {
            response => {
                code            => 200,
                is_error        => undef,
                message         => undef,
                decoded_content => 'content',
            },
        }
    );
    my $intercom = $class->new(
        base_url => 'https://api.intercom.io',
        username => "username",
        password => "password",
        ua       => $user_agent
    );
    return $intercom;
}

# Helper functions
sub _mock_user_agent {
    my($args)         = @_;
    my $http_response = _mock_http_response( $args->{response} );
    my $ua            = Test::MockObject->new();
    $ua->set_isa('LWP::UserAgent');
    $ua->set_always( 'request', $http_response );
    return $ua;
}

sub _mock_http_response {
    my($args) = @_;
    my $resp = Test::MockObject->new();
    $resp->set_always( 'code',            $args->{code} );
    $resp->set_always( 'is_error',        $args->{is_error} );
    $resp->set_always( 'message',         $args->{message} );
    $resp->set_always( 'decoded_content', $args->{decoded_content} );
    return $resp;
}

done_testing();

1
