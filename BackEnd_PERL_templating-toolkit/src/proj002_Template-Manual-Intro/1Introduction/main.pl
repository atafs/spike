use Template;

my $tt = Template->new({
    INCLUDE_PATH => 'C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL_templating-toolkit\src\proj002_Template-Manual-Intro\1Introduction\templates',
    INTERPOLATE  => 1,
}) || die "$Template::ERROR\n";

my $vars = {
    name     => 'Developer Americo Tomas',
    debt     => '1000 iMacs!!',
    deadline => '12pm tomorrow!!',
};

$tt->process('letters/overdrawn.txt', $vars)
    || die $tt->error(), "\n";
