# path
cd /media/sf_Trunk/sm5/sitemaker/perl

# run and send the mails for testing in the VM
perl -I Sitemaker-Plack/lib/ -I GandiAPI/lib -I Sitemaker-Model-Pricing/lib -I Sitemaker-DAO/lib/ scripts/test_emails.pl --email americo@moonfruit.com --lang en

# run additional script if needed
/home/website2/support-scripts/daemons/job_DevMulti.pl
