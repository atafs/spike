use Digest::SHA qw(hmac_sha256_hex);

$digest = hmac_sha256_hex("The quick brown fox jumps over the lazy dog", "secret");
print $digest; # 54cd5b827c0ec938fa072a29b177469c843317b095591dc846767aa338bac600
