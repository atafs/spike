#!/bin/bash

#path
cd /media/sf_myMoonfruit/spike/BackEnd_PERL_API/proj001_send-msg-intercom/curl

#Moonfruit [TEST]
    #APP ID
    #i4eeesp5

    #API KEY
    #i4eeesp5

clear

curl https://api.intercom.io/contacts \
-X POST \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '{
  "email": "hugo-tomas1@moonfruit.com",
  "name": "hugo-tomas1",

  "message_type": "email",
  "subject": "Hey",

  "last_seen_ip" : "1.2.3.4",
  "last_seen_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9",
  "custom_attributes": {
    "paid_subscriber" : false,
    "monthly_spend": 200.5,
    "team_mates": 7
  }
}'

sleep 2
clear

curl https://api.intercom.io/contacts?email=hugo-tomas1@moonfruit.com  \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json'
