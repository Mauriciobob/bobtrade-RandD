#!/usr/bin/perl
use strict;
use warnings;

my $infile = "dataset01.txt";
my $outfile = "dataset02.txt";
open(my $fh01, '<', $infile) or die("Could not open file.");
open(my $fh02, '>', $outfile);

while(my $line=<$fh01>) {
 $line =~ s/MAR/03/;
 $line =~ s/AUG/08/;
 $line =~ s/SEP/09/;
 print $fh02 $line;
}

close $fh01;
close $fh02

