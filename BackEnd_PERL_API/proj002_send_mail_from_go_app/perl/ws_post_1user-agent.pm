require LWP::UserAgent;

use Data::Dumper;

$Data::Dumper::Maxdepth = 3;       # no deeper than xxx refs down

my $ua = LWP::UserAgent->new;
$ua->is_online;
$ua->timeout(10);
$ua->env_proxy;

my $response = $ua->get('http://localhost:8080/');
print Data::Dumper->Dump([$response], [qw(response)]);

if ($response->is_success) {
    print $response->decoded_content;  # or whatever
}
else {
    die $response->status_line;
}
