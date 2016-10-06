use MF::IntercomDAO;
use Data::Dumper;

my $username = "i4eeesp5";
my $password = "31fa73bceea742dd631d69d46ddf9352e8ec2105";
my $email    = 'americo_v10@moonfruit.com';
my $name     = 'americo_v10';

my $intercom_dao = IntercomDAO->new(
    {
        base_url => 'https://api.intercom.io',
        username => $username,
        password => $password
    }
);

my ($result, $error) = $intercom_dao->create_contact($name, $email);

my $id = $result->{id};

#Americo delete
sleep(1);
print "id: ", Dumper($id);
print "create_contact: ", Dumper($result);
#*********

sleep(1);
my $message_body = 'Intercom Test msg v10';
my ($result, $error) = $intercom_dao->create_message($id, $message_body);
if($error){
  print STDERR "Failed to send intercom messages [$err]";
  return;
}

#Americo delete
sleep(1);
print "create_message: ", Dumper($result);
#*********
