#!/bin/bash

#americo
#user_id={100002}

#americo
#email={americo@moonfruit.com}

#path
cd /media/sf_myMoonfruit/spike/BackEnd_PERL_API/proj001_send-msg-intercom/curl

curl https://api.intercom.io/users?company_id=001  \
-X GET \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
>> /media/sf_myMoonfruit/spike/BackEnd_PERL_API/proj001_send-msg-intercom/curl/intercom/_3api-FINAL/json/users_3list-companies.json
