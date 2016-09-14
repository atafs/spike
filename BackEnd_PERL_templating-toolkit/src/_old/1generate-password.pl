#!/usr/bin/env perl

  use v5.10.0;
  use warnings;
  use strict;

  use Digest::MD5 'md5_hex';

  say md5_hex("1234");
