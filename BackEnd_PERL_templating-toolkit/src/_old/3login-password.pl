#!/usr/bin/env perl

  use v5.10.0;
  use warnings;
  use strict;

  use Digest::MD5 'md5_hex';

  open(my $fh, '<', 'passwords') or die "cannot open passwords file $!";
  my %passwords = map({chomp; split(/:/, $_, 2)} <$fh>);

  my $user;
  while (1) {
    print "Username: ";
    chomp($user = <>);
    print "Password: ";
    chomp(my $pass = <>);

    # they must be a valid user and
    # their digested password must match the stored digest
    last if(
      $passwords{$user} and
      md5_hex($pass) eq $passwords{$user}
    );

    # otherwise, we're stuck in the loop
    say "Sorry!";
  }

  say "Congratulations $user!";
