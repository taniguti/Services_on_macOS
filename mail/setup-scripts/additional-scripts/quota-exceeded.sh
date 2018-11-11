#!/bin/bash

USER="$1"
eval "$(/usr/local/bin/doveconf 2> /dev/null | grep postmaster_address  | tr -d "[:blank:]_")"
msgfile="/tmp/$( uuidgen )"

if [ -z "$postmasteraddress" ]; then
    postmasteraddress="postmaster@$(hostname)"
fi

cat <<_TEXT > "$msgfile"
From: Mail Administrator <$postmasteraddress>
Subject: [Error] Email server usage has exceeded quota

Please be aware that you have exceeded your email storage quota on
the mail server.  Future mail deliveries may be refused until you free
sufficient space for the new mail.

Please move any messages you no longer need on the server to your
local email folders.  You may also want to check any "Sent Messages",
"Trash" or "Deleted Items" folders for email that no longer needs to
be on the server.

Thank you for your quick attention to this matter!

Sincerely,
Mail Administrator
_TEXT

dovecot-lda -d "$USER" -o "plugin/quota=maildir:User quota:noenforcing" < "$msgfile"
rm -f "$msgfile"
