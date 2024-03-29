# use strict;
# use warnings;
use lib qw( lib/);
use DBI::Library qw(:independent );
use vars qw($db $m_sUser $host $password);
do('t/config.pl');
my $m_dbh = initDB(
                   {
                    name     => $db,
                    host     => $host,
                    user     => $m_sUser,
                    password => $password,
                   }
);
my %execute4 = (
                title       => 'select',
                description => 'Fo-test',
                sql         => "select *from <TABLE> where `title` = ?",
                return      => "fetch_hashref"
);
void('truncate querys');
addexecute(\%execute4);
my $showTables = useexecute('select', 'select');
use Test::More tests => 5;
ok($showTables->{description} eq 'Fo-test');
ok(tableLength('querys') == 1);
my $sth = $m_dbh->prepare("select *from querys");
$sth->execute();
ok(!$@);
$sth->finish();
my $sth2 = $m_dbh->prepare("select count(*) from querys");
$sth2->execute();
my $l = $sth2->fetchrow_array();
ok($l == 1);
void('truncate querys');
ok(tableLength('querys') == 0);
