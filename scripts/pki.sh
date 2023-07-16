#!/bin/bash
# Add trusted certificates
# @author Michael Poore

## Install ca certificates
echo 'Installing ca-certificates package ...'
dnf install -y -q ca-certificates &>/dev/null

## Install trusted SSL CA certificates
echo 'Installing trusted SSL CA certificates ...'
pkiCerts=("root.crt" "issuing.crt")
cd /etc/pki/ca-trust/source/anchors
for cert in ${pkiCerts[@]}; do
    wget -q ${PKISERVER}/$cert &>/dev/null
done
update-ca-trust extract