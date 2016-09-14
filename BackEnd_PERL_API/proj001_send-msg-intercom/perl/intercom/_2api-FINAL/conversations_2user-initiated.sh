#!/bin/bash

#path
cd /media/sf_myMoonfruit/spike/BackEnd_PERL_API/proj001_send-msg-intercom/curl

#User or Contact Initiated Conversation
    #Moonfruit [TEST]
        #APP ID
        #i4eeesp5

        #API KEY
        #i4eeesp5

#User hugo
    #"id": "57aaeb8c89562c479a000005",
    #"user_id": "998"
    #"email": "hugo@moonfruit.com"

curl https://api.intercom.io/messages \
-X POST \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '{
  "message_type": "email",
  "subject": "Hey",
  "body": "Ponies, cute small horses or something more sinister? 444445555566666",
  "template": "plain",

  "from": {
    "type": "user",
    "email": "hugo@moonfruit.com"
  }
}'
