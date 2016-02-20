#!/usr/bin/perl
# Convert BerkeleyDB File into Recno
# http://search.cpan.org/~pmqs/BerkeleyDB-0.39/BerkeleyDB.pod
#------------------------------------------------------------------------------#
use strict;
use warnings;
use BerkeleyDB;
use vars qw( @array $value $cnt );
$| = 1;

#------------------------------------------------------------------------------#
my $filename = "links.sort";
my $database = "links.bdb";

#------------------------------------------------------------------------------#
#unlink($database);
tie @array, "BerkeleyDB::Recno",
  -Filename => $database,
  -Flags    => DB_CREATE,
  or die "Cannot open file $database: $! $BerkeleyDB::Error\n";

#------------------------------------------------------------------------------#

$cnt   = 0;
$value = 1;
&load_data($filename);
print "Total=" . $cnt . "\n";
untie @array;

#------------------------------------------------------------------------------#
sub load_data
{
    my $sourcefile = shift;
    open(FILE, $sourcefile) or die "$!";

    while (<FILE>)
    {
        chomp($_);
        push(@array, "$_|$value");
        print "$cnt : " . $_ . "\n" if (($cnt % 10000) == 0);
        $cnt++;
    }

    close(FILE);
}

#------------------------------------------------------------------------------#
__END__

