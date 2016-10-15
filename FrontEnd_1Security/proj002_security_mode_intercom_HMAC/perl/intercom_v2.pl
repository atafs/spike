use Digest::SHA qw(hmac_sha256_base64);

$digest = hmac_sha256_base64("Message", "secret");
# digest is currently: qnR8UCqJggD55PohusaBNviGoOJ67HC6Btry4qXLVZc

# Fix padding of Base64 digests
while (length($digest) % 4) {
    $digest .= '=';
}

print $digest;
# digest is now: qnR8UCqJggD55PohusaBNviGoOJ67HC6Btry4qXLVZc=
