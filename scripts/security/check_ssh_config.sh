#!/bin/bash
CONF=/etc/ssh/sshd_config
echo "=== Important SSH settings ==="
for key in PermitRootLogin PasswordAuthentication PubkeyAuthentication Port ChallengeResponseAuthentication; do
  val=$(sshd -T 2>/dev/null | awk -v k=$(echo $key | tr 'A-Z' 'a-z') '$1==k {print $2}')
  printf "%-30s %s\n" "$key" "${val:-not set}"
done
