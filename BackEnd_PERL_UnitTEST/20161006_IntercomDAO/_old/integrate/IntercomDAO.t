use strict;
use warnings;

use Test::More;
use Test::MockObject;
use Test::MockModule;
use Test::Exception;

use diagnostics;    # this gives you more debugging information

my $class = 'IntercomDAO';
use_ok($class);

subtest is_alive => sub {
    plan tests => 3;
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
    pass("This is a subtest is_alive");
    isa_ok( $user_agent, 'LWP::UserAgent' );

    my $intercom = $class->new(
        base_url => 'https://api.intercom.io',
        username => "i4eeesp5",
        password => "31fa73bceea742dd631d69d46ddf9352e8ec2105",
        ua       => $user_agent
    );

    my $success = $intercom->is_alive();
    ok( $success, 'Can check the status of Intercom DAO: it is alive' );
};

subtest request => sub {
    plan tests => 2;

    my $expected_content = 'content';
    my $user_agent       = _mock_user_agent(
        {
            response => {
                code            => 200,
                is_error        => undef,
                message         => undef,
                decoded_content => $expected_content,
            },
        }
    );

    my $intercom = IntercomDAO->new(
        base_url => 'https://api.intercom.io',
        username => "i4eeesp5",
        password => "31fa73bceea742dd631d69d46ddf9352e8ec2105",
        ua       => $user_agent
    );

    my( $response_content, $err )
      = $intercom->request( 'GET', '/endpoint', {} );

    ok( !$err, 'Can make a request to an end point without error' );
    is( $response_content, $expected_content, '... and the content in the response is correct' );
};

subtest json_request => sub {
    plan tests => 2;
    my $user_agent = _mock_user_agent(
        {
            response => {
                code            => 200,
                is_error        => undef,
                message         => undef,
                decoded_content => '{ "key" : "value" }',
            },
        }
    );
    my $expected_struct = { key => 'value' };

    my $intercom = IntercomDAO->new(
        base_url => 'https://api.intercom.io',
        username => "i4eeesp5",
        password => "31fa73bceea742dd631d69d46ddf9352e8ec2105",
        ua       => $user_agent
    );

    my( $struct, $err ) = $intercom->json_request( 'GET', '/endpoint', {} );

    ok( !$err, 'Can make a request to an end point without error' );
    is_deeply( $struct, $expected_struct,
        '... and the decoded JSON content in the response is correct' );
};

subtest create_contact => sub {
    plan tests => 2;
    my $expected_content = 'content';
    my $user_agent       = _mock_user_agent(
        {
            response => {
                code            => 200,
                is_error        => undef,
                message         => undef,
                decoded_content => '{ "name" : "americo", "email" : "americo@moonfruit.com" }',
            },
        }
    );
    my $expected_struct = {
        name  => "americo",
        email => 'americo@moonfruit.com',
    };

    my $intercom = IntercomDAO->new(
        base_url => 'https://api.intercom.io',
        username => "i4eeesp5",
        password => "31fa73bceea742dd631d69d46ddf9352e8ec2105",
        ua       => $user_agent
    );

    my( $struct, $err ) = $intercom->json_request( 'POST', '/contact', $expected_struct );

    ok( !$err, 'Can make a request to an end point without error' );
    is_deeply( $struct, $expected_struct,
        '... and the decoded JSON content in the response is correct' );
};

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
