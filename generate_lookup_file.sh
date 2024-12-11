#!/bin/bash

#
# Generate a JSON file of the known account data that can be used to lookup AWS Accounts
#
yq '.[] | .accounts[] as $account | {($account): .name}' accounts.yaml | yq -o=json '.'