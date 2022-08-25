#!/bin/bash
sed -i "s/relayhost =/relayhost = $RELAY_HOST/" /etc/postfix/main.cf
rspamd -u rspamd -g rspamd -d
postfix start-fg