#!/bin/bash

#path
#cd /media/sf_myMoonfruit/spike/BackEnd_PERL_API/proj001_send-msg-intercom/curl

#User or Contact Initiated Conversation
    #Moonfruit [TEST]
        #APP ID
        #i4eeesp5

        #API KEY
        #i4eeesp5

curl https://api.intercom.io/messages \
-X POST \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d'
{
  "template": "plain",
  "subject": "americotests",
  "body" : "CURL POST as a LEAD (contact)? 12121212121212 qwqwqwqwqwqww",
  "message_type": "email",

  "from": {
    "type": "user",
    "id": "57adaad868d6df61cc000014"
  },
  "to": {
    "type": "admin",
    "id": "i4eeesp5"
  }
}'
