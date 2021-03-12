jq -c '.[] | select(.Name | contains("preprod","nonprod"))' accounts

Aboe command will work on json array. not object

jq  '.Accounts[] | select(.Name | contains("preprod","nonprod"))' accounts-12-03 | jq

To extract the value from JSON object

Example JSON:

{
  "Accounts": [
  {
    "Name": "Testing-preprod",
    "Id": "12345"
    
  },
  {
    "Name": "live-prod",
    "Id": "98765"
    
   }
 ]
}
