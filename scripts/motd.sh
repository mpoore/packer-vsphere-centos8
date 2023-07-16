#!/bin/bash
# Configure motd and issue
# @author Michael Poore

## Setup MoTD
echo 'Setting login banner ...'
UPDATED=$(date +"%Y-%m-%d")
cat << EOF > /etc/issue

           {__   {__ {_            
{__     {__ {__ {_     {__{__ {__  
 {__   {__  {__      {__   {__  {__
  {__ {__   {__    {__     {__  {__
   {_{__    {__  {__       {__  {__
    {__    {____{________ {___  {__
        
        version :   $BUILDVERSION
        source  :   $BUILDREPO ($BUILDBRANCH)
        updated :   $UPDATED

EOF
ln -sf /etc/issue /etc/issue.net