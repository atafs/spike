#!/bin/bash

curl https://api.intercom.io/subscriptions \
-XPOST \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d'
{
  "service_type": "web",
  "topics": ["conversation", "user"],
  "url": "https://moonfruit.com/hooks/1"
}'

curl https://api.intercom.io/users \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
'{
  "users": [
    {
      "type": "user",
      "id": "57f37a102192ff7d68e4039f",
     },
   ],
}'


curl https://api.intercom.io/conversations \
-XPOST \
-u dG9rOjg4NDM3ZjZjX2U2YzRfNGVlNF9iNGJiXzE0ODk3MjRhZjNjYjoxOjA=:123456789 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d'
{
  "type": "conversation",
  "id": "57f37a102192ff7d68e4039f",

}'


curl https://api.intercom.io/conversations \
-u dG9rOjg4NDM3ZjZjX2U2YzRfNGVlNF9iNGJiXzE0ODk3MjRhZjNjYjoxOjA=:123456789 \
-H 'Accept:application/json' \
'{
  "type": "conversation",
  "id": "57f37a102192ff7d68e4039f",
}'
