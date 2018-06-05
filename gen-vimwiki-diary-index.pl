#!/usr/bin/env perl

use strict;
use warnings;

use IO::File;

my $usage = "Usage: $0 <path> <.ext>\n";

my $path = shift || die $usage; $path =~ s{diary/?$}{};
my $ext = shift || die $usage; $ext =~ s/^\.+//;

$path = "$path/diary/";

chdir $path or die;

my @files = sort { $b cmp $a } grep {
    /^(\d\d\d\d-\d\d-\d\d)\.$ext$/
} glob("*.$ext");

exit unless @files;

my $OUT = new IO::File("$path/diary.$ext", "w");

select $OUT;

print "# 日记\n";

my $curYear = '';
my $curMonth = '';

foreach my $file (@files) {
    my ($date, $year, $month) = $file =~ /^((\d\d\d\d)-(\d\d)-\d\d)/;

    if ( $year ne $curYear ){
        print "\n## $year 年\n";
        $curYear = $year;
        $curMonth = '';
    }

    if ( $month ne $curMonth ){
        print "\n### $month 月\n\n";
        $curMonth = $month;
    }

    my $title = getTitle($file);

    if ( not defined $title ){
        print "    * [$date]()\n";
    }
    else {
        print "    * [$date $title]($file)\n";
    }
}

sub getTitle {
    my $file = shift;

    my $fh = new IO::File($file) or die "open: $!\n";
    my $title;
    my $entered = 0;
    while(<$fh>) {
        if (/^---/) {
            last if $entered;
            $entered = 1;
            next;
        }
        next if not $entered;
        last if ($title) = (m/^title:\s+(.*?)$/);
    }

    return $title;
}
