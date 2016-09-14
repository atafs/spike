#!/bin/bash

#americo
#user_id={100002}

#americo
#email={americo@moonfruit.com}

#path
cd /media/sf_myMoonfruit/spike/BackEnd_PERL_API/proj001_send-msg-intercom/curl

curl https://api.intercom.io/users \
-X POST \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '{
  "user_id": "997",
  "email": "jose@moonfruit.com",
  "name": "Jose Nascimento",
  "signed_up_at": 1392731331,
  "last_seen_ip" : "1.2.3.4",
  "last_seen_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9",
  "custom_attributes": {
    "paid_subscriber" : true,
    "monthly_spend": 205.5,
    "team_mates": 9
  },
  "companies": [
    {
      "company_id" : "001",
      "name" : "Enfermeira",
      "monthly_spend" : 7500
    }
  ]
}'
