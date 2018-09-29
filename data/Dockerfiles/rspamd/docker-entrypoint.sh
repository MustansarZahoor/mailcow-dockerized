#!/bin/bash

chown -R _rspamd:_rspamd /var/lib/rspamd
[[ ! -f /etc/rspamd/override.d/worker-controller-password.inc ]] && echo '# Placeholder' > /etc/rspamd/override.d/worker-controller-password.inc
[[ ! -f /etc/rspamd/custom/sa-rules-heinlein ]] && echo '# to be auto-filled by dovecot-mailcow' > /etc/rspamd/custom/sa-rules-heinlein

exec "$@"
