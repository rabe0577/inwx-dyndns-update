# inwx-dyndns-update
Bashscript to update INWX domain using DynDNS service

Installation
------
The installation is quite simple. The script only needs the username and password of the DynDNS user and the target domain to check the current IP address. This data must be entered in the variables in the script.

To execute, the script can simply be executed in the Bash.

It is a good idea to store the script in a crontab to keep the DNS entry up to date. For example, this can be done every 5 minutes. This could look like this:
```
*/5 * * * * bash /home/user/dyndns-update.sh
```
