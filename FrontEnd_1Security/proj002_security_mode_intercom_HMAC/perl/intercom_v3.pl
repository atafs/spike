# Functional style
use Digest::HMAC qw(hmac hmac_hex);

$digest = hmac($data, $key, \&myhash);
print hmac_hex($data, $key, \&myhash);

# OO style
use Digest::HMAC;
$hmac = Digest::HMAC->new($key, "Digest::MyHash");

$hmac->add($data);
$hmac->addfile(*FILE);

$digest = $hmac->digest;
$digest = $hmac->hexdigest;
$digest = $hmac->b64digest;
