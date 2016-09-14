#!/bin/bash

#path
cd /media/sf_myMoonfruit/spike/BackEnd_PERL_API/proj001_send-msg-intercom/curl

curl https://api.intercom.io/users \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept:application/json'
