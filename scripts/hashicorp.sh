#!/bin/bash
# Configure HashiCorp repository
# @author Michael Poore

## Adding hashicorp repository
echo 'Adding HashiCorp repository ...'
wget -O- https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo &>/dev/null | tee /etc/yum.repos.d/hashicorp.repo &>/dev/null