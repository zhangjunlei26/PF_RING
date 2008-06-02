#
# 1.open.t - test for open sequence on PF-RING aware devices
#
# Perl Net-Pfring - Perl binding for PF-RING
#
# Copyright (c) 2008 Rocco Carbone <rocco /at/ ntop /dot/ org>
#
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
#
# This program is free software; you can redistribute it and/or modify 
# it under the same terms as Perl itself.
#
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
#

use Net::Pfring;

# here is the main

BEGIN { $| = 1; print "1..1\n"; }
END {print "not ok 1\n" unless $ring;}

my $device  = "eth0";
my $snaplen = 1500;

$ring = Net::Pfring::Open($device, 1, $snaplen);

print "ok 1\n";

