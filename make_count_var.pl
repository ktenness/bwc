#!/usr/bin/env perl
use strict;
use warnings;

#take out extra comma last line!

open(IN,"unique_most_recent.tsv");
open(OUT,">citymap.js");

my $c=1;

print OUT "var citymap = {\n";
my $l=<IN>;
while($l=<IN>){
	my @a=split(/\t/,$l);
	print OUT "\t$c: {\n";
	print OUT "\t\tcenter: {lat: $a[31], lng: $a[32]},\n";
	print OUT "\t\tpopulation: $a[3]\n\t},\n";
	$c++;
}
print OUT "};\n";
close(IN);
close(OUT);

#var citymap = {
#        chicago: {
#          center: {lat: 41.878, lng: -87.629},
#          population: 2714856
#        },
#        newyork: {
#          center: {lat: 40.714, lng: -74.005},
#          population: 8405837
#        },
#        losangeles: {
#          center: {lat: 34.052, lng: -118.243},
#          population: 3857799
#        },
#        vancouver: {
#          center: {lat: 49.25, lng: -123.1},
#          population: 603502
#        }
#      };

