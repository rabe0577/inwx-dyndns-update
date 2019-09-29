#!/bin/bash

# Enter INWX DynDNS User login credentials - not Account login credentials

username='user'
password='password'

hostname='your-dyndns.domain.tld'

# Optional Script setting

enable_ipv6=true

v4_get_url="https://v4.ident.me/"
v6_get_url="https://v6.ident.me/"

dyndns_update_url="https://dyndns.inwx.com/nic/update?"

test_dns_server="1.1.1.1"
