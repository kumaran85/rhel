jq -c '.[] | select(.Name | contains("preprod","nonprod"))' accounts

Aboce command will work on json array. nort object
