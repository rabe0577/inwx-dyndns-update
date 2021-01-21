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


## Start Bash Script

# Get public IP Address
ipv4=$(curl -s "$v4_get_url")
ipv6=$(curl -s "$v6_get_url")

# Get current hostname IP address
host_ipv4=$(dig @$test_dns_server +short -t a $hostname | head -n 1)
host_ipv6=$(dig @$test_dns_server +short -t aaaa $hostname | head -n 1)

# Update DynDNS IP if not correct
if [ $enable_ipv6 = true -a -n "$ipv6" ]; then
  if [ $host_ipv4 != $ipv4 -o $host_ipv6 != $ipv6 ]; then
    curl --user $username:$password ${dyndns_update_url}myip=${ipv4}&myipv6=${ipv6}
  fi
else
  if [ "$host_ipv4" != "$ipv4" ]; then
    curl --user $username:$password ${dyndns_update_url}myip=${ipv4}
  fi
fi
