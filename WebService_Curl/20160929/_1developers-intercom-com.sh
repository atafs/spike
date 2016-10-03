#!/bin/bash

curl https://api.intercom.io/contacts \
-X POST \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '
{
  "type": "segment",
  "id": "57eba0c1270dcae6af8e3708",
  "name": "americo",
  "created_at": 1394621988,
  "updated_at": 1394622004
}'



curl https://api.intercom.io/segments \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept:application/json'


curl https://api.intercom.io/segments/57eba0c1270dcae6af8e3708 \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept:application/json'



curl https://api.intercom.io/users \
-X POST \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '
{
  "user_id": "25",
  "email": "wash@serenity.io",
  "name": "Hoban Washburne",
  "signed_up_at": 1392731331,
  "last_seen_ip" : "1.2.3.4",
  "last_seen_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9",
  "custom_attributes": {
    "paid_subscriber" : true,
    "monthly_spend": 155.5,
    "team_mates": 9
  }
}'



curl https://api.intercom.io/contacts \
-X POST \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '
{
  "email": "agrela007@truth.org",
  "name": "Agrela007 Smith",
  "last_seen_ip" : "1.2.3.4",
  "last_seen_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9",
  "custom_attributes": {
	"paid_subscriber" : true,
    "test002": 155.5,
    "test001": 9
  }
}'


curl https://api.intercom.io/contacts \
-X POST \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '
{
  "type": "segment",
  "id": "53203e244cba153d39000999",
  "name": "New",
  "created_at": 1394621988,
  "updated_at": 1394622004
}'




curl https://api.intercom.io/users \
-X POST \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '
{
  "email": "americo10@serenity.io",
  "name": "Americo10 Washburne",
  "custom_attributes": {
    "paid_subscriber" : true,
    "test001" : false,
    "test002" : 200,
    "team_mates": 500
  }
}'


curl https://api.intercom.io/users \
-X POST \
-u i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '
{
  "email": "americo4@serenity.io",
  "name": "Americo4 Washburne",
  "custom_attributes": {
    "paid_subscriber" : true,
    "monthly_spend1" : 100,
    "monthly_spend2" : 120,
    "monthly_spend3" : false,
    "team_mates": 9
  }
}'


curl https://api.intercom.io/users \
-X POST \
-u dG9rOjg4NDM3ZjZjX2U2YzRfNGVlNF9iNGJiXzE0ODk3MjRhZjNjYjoxOjA=:31fa73bceea742dd631d69d46ddf9352e8ec2105 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '
{
  "email": "americo8@serenity.io",
  "name": "Americo8 Washburne",
  "custom_attributes": {
    "has_domains" : true,
    "on_trial" : true
  }
}'

curl https://api.intercom.io/users \
-X POST \
-u dG9rOjg4NDM3ZjZjX2U2YzRfNGVlNF9iNGJiXzE0ODk3MjRhZjNjYjoxOjA=:123456789 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '
{
  "email": "americo9@serenity.io",
  "name": "Americo9 Washburne",
  "custom_attributes": {
    "has_domains" : true,
    "on_trial" : true
  }
}'


curl https://api.intercom.io/users \
-X POST \
-u 'dG9rOjg4NDM3ZjZjX2U2YzRfNGVlNF9iNGJiXzE0ODk3MjRhZjNjYjoxOjA=': -H 'Accept:application/json' \
-H 'Content-Type: application/json' -d '
{
  "email": "americo11@serenity.io",
  "name": "Americo11 Washburne",
  "custom_attributes": {
    "has_domains" : true,
    "on_trial" : true
  }
}'

curl https://api.intercom.io/users \
-X POST \
-u 'dG9rOjg4NDM3ZjZjX2U2YzRfNGVlNF9iNGJiXzE0ODk3MjRhZjNjYjoxOjA=' \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '
{
  "email": "americo13@serenity.io",
  "name": "Americo13 Washburne",
  "custom_attributes": {
    "has_domains" : true,
    "on_trial" : true
  }
}'

curl https://api.intercom.io/contacts \
-X POST \
-u dG9rOjg4NDM3ZjZjX2U2YzRfNGVlNF9iNGJiXzE0ODk3MjRhZjNjYjoxOjA=:123456789 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '
{
  "email": "americo12@serenity.io",
  "name": "Americo12 Washburne",
  "custom_attributes": {
    "has_domains" : true,
    "on_trial" : true
  }
}'

curl https://api.intercom.io/users \
-X POST \
-u dG9rOjg4NDM3ZjZjX2U2YzRfNGVlNF9iNGJiXzE0ODk3MjRhZjNjYjoxOjA=:123456789 \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' -d '
{
  "email": "americo15@serenity.io",
  "name": "Americo15 Washburne",
  "custom_attributes": {
    "has_domains" : true,
    "on_trial" : true
  }
}'
