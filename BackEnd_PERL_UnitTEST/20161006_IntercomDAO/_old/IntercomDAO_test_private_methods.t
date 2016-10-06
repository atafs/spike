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
    my $intercom = _intercomdao_class();
    require_ok('MF::RequestDAO');
    isa_ok( $intercom, $class, 'Can instantiate interface IntercomDAO which' );

};

# ok($got eq $expected, $test_name);
# is  ($got, $expected, $test_name);
# isnt($got, $expected, $test_name);

# diag("here's what went wrong");

# can_ok($module, @methods);
# isa_ok($object, $class);
# pass($test_name);
# fail($test_name);

# like  ($got, qr/expected/, $test_name);
# unlike($got, qr/expected/, $test_name);

# cmp_ok($got, '==', $expected, $test_name);
# is_deeply($got_complex_structure, $expected_complex_structure, $test_name);

# plan tests => 4;

sub _intercomdao_class {
    my $mf_request_dao = $class->new(
        base_url => 'base_url',
        username => "username",
        password => "password",

        # ua       => _mock_user_agent(),
    );
    return $mf_request_dao;
}

subtest constructor => sub {
    my $intercom = _intercomdao_class();

    diag("( base_url, username, password )");
    is( $intercom->base_url, 'base_url', 'Can pass the Base_url with Success' );
    is( $intercom->username, 'username', 'Can pass the Username with Success' );
    is( $intercom->password, 'password', 'Can pass the Password with Success' );
    isnt( $intercom->base_url, 'base_url123', 'Can Not pass the Base_url123 with Success' );
    isnt( $intercom->username, 'username123', 'Can Not pass the Username123 with Success' );
    isnt( $intercom->password, 'password123', 'Can Not pass the Password123 with Success' );
};

subtest methods => sub {
    diag("Used in the class:");
    use_ok($class);

};

subtest used_in_constructor => sub {
    can_ok( $class, '_build_user_agent' );
    can_ok( $class, '_build_encoder' );
    can_ok( $class, '_build_request' );

};

subtest to_validate => sub {
    can_ok( $class, '_validate_method' );
    my $got_method = MF::IntercomDAO::_validate_method( 'POST' );
    my $expected_method = 'POST';
    is( $got_method, $expected_method, 'Can pass a Method POST with Success' );

    can_ok( $class, '_validate_path' );
    can_ok( $class, '_validate_headers' );
    can_ok( $class, '_validate_errors' );

};

subtest to_set_request_with_custom => sub {
    can_ok( $class, '_set_request_with_custom_content' );
    can_ok( $class, '_set_request_with_custom_headers' );

};

subtest to_set_json_request => sub {
    can_ok( $class, 'json_request' );

};

subtest to_make_request => sub {
    can_ok( $class, 'request' );

};

subtest create_contact => sub {
    can_ok( $class, 'create_contact' );

};

subtest create_message => sub {
    can_ok( $class, 'create_message' );

};

# subtest _validate_method => sub {
#     plan tests => 2;
#
#     my $got = MF::IntercomDAO::_validate_method('POST');
#     my $expected = 'POST';
#     is( $got, $expected, 'POST is a valid api call in _validate_method()' );
#     dies_ok { MF::IntercomDAO::_validate_method('POSTget') } 'POSTget is an invalid api call in _validate_method()';
#
# };
#
# subtest _validate_path => sub {
#     plan tests => 1;
#
#     my $got = MF::IntercomDAO::_validate_path('/contact', 'POST');
#     my $expected = '/contact';
#     is( $got, $expected, '/contact is a valid API for the call POST' );
#     # dies_ok { MF::IntercomDAO::_validate_path('/contactxxx', 'POST') } 'url is mandatory for a API call';
# };
#
#
# sub _create_class {
#     my $user_agent = _mock_user_agent(
#         {
#             response => {
#                 code            => 200,
#                 is_error        => undef,
#                 message         => undef,
#                 decoded_content => 'content',
#             },
#         }
#     );
#     my $intercom = $class->new(
#         base_url => 'https://api.intercom.io',
#         username => "username",
#         password => "password",
#         ua       => $user_agent
#     );
#     return $intercom;
# }
#
# # Helper functions
# sub _mock_user_agent {
#     my($args)         = @_;
#     my $http_response = _mock_http_response( $args->{response} );
#     my $ua            = Test::MockObject->new();
#     $ua->set_isa('LWP::UserAgent');
#     $ua->set_always( 'request', $http_response );
#     return $ua;
# }
#
# sub _mock_http_response {
#     my($args) = @_;
#     my $resp = Test::MockObject->new();
#     $resp->set_always( 'code',            $args->{code} );
#     $resp->set_always( 'is_error',        $args->{is_error} );
#     $resp->set_always( 'message',         $args->{message} );
#     $resp->set_always( 'decoded_content', $args->{decoded_content} );
#     return $resp;
# }

done_testing();

1
