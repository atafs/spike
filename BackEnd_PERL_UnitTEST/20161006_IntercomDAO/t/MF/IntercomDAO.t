# Unit tests for MF::IntercomDAO;

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

subtest class => sub {
    my $intercom = _create_class_three_params();
    isa_ok( _create_class_three_params(), $class, 'Can instantiate interface IntercomDAO with 3 params which' );
    isa_ok( _create_class_four_params(),  $class, 'Can instantiate interface IntercomDAO tith 4 params which' );

};

subtest constructor => sub {
    my $intercom = _create_class_three_params();

    diag("( base_url, username, password )");
    is( $intercom->base_url, 'base_url', 'Can pass the Base_url with Success' );
    is( $intercom->username, 'username', 'Can pass the Username with Success' );
    is( $intercom->password, 'password', 'Can pass the Password with Success' );

    isnt( $intercom->base_url, 'base_url123', 'Can Not pass the Base_url123 with Success' );
    isnt( $intercom->username, 'username123', 'Can Not pass the Username123 with Success' );
    isnt( $intercom->password, 'password123', 'Can Not pass the Password123 with Success' );

};

subtest set_json_request => sub {
    can_ok( $class, 'json_request' );

};

subtest make_request => sub {
    can_ok( $class, 'request' );

};

subtest create_contact => sub {
    can_ok( $class, 'create_contact' );
    my $intercom_dao = _create_class_four_params();

    my ( $contact, $err ) = $intercom_dao->create_contact(
        {   path      => '/endpoint',
            name      => 'name',
            email     => 'email@email.com'
        }
    );
    # ok( !$err, 'Can make a request to an end point without error' );
    # is( $contact->{path}, '/endpoint', "Can create contact with correct path" );
    # is( $contact->{name}, 'name', "Can create contact with correct name" );
    # is( $contact->{email}, 'email@email.com', "Can create contact with correct email" );

};

subtest create_message_with_user_id => sub {
    can_ok( $class, 'create_message' );
    my $intercom_dao = _create_class_four_params();

    my ( $message, $err ) = $intercom_dao->create_message(
        {   user_id => '01234',
            id      => '56789',
            body    => 'body'
        }
    );

    ok( !$err, 'Can make a request to an end point without error' );
    is( $message->{user_id}, '01234', "Can create message with correct user_id" );
    is( $message->{id}, '56789', "Can create message with correct id" );
    is( $message->{body}, 'body', "Can create message with correct body" );

};

subtest create_message_with_id => sub {
    can_ok( $class, 'create_message' );
    my $intercom_dao = _create_class_four_params();

    my ( $message, $err ) = $intercom_dao->create_message(
        {   user_id      => 'does not existe',
            id           => 'id',
            body         => 'body'
        }
    );

    ok( !$err, 'Can make a request to an end point without error' );
    isnt ( $message->{user_id}, 'does not existe', "Can create message when user_id doen not exist" );
    is( $message->{id}, '56789', "Can create message with correct id" );
    is( $message->{body}, 'body', "Can create message with correct body" );
};

# Helper functions
sub _create_class_three_params {
    my $mf_request_dao = $class->new(
        base_url => 'base_url',
        username => 'username',
        password => 'password',
    );
    return $mf_request_dao;
}

sub _create_class_four_params {
    my $user_agent = _mock_user_agent(
        {   response => {
                code            => 200,
                is_error        => undef,
                message         => undef,
                decoded_content => '{
                  "path"      : "/endpoint",
                  "name"      : "name",
                  "email"     : "email@email.com",
                  "user_id"   : "01234",
                  "id"        : "56789",
                  "body"      : "body"
                }',
            },
        }
    );
    my $intercom = $class->new(
        base_url => 'http://localhost/',
        username => "username",
        password => "password",
        ua       => $user_agent
    );
    return $intercom;
}

sub _mock_user_agent {
    my ($args)        = @_;
    my $http_response = _mock_http_response( $args->{response} );
    my $ua            = Test::MockObject->new();
    $ua->set_isa('LWP::UserAgent');
    $ua->set_always( 'request', $http_response );
    return $ua;
}

sub _mock_http_response {
    my ($args) = @_;
    my $resp = Test::MockObject->new();
    $resp->set_always( 'code',            $args->{code} );
    $resp->set_always( 'is_error',        $args->{is_error} );
    $resp->set_always( 'message',         $args->{message} );
    $resp->set_always( 'decoded_content', $args->{decoded_content} );
    return $resp;
}

done_testing();

1
