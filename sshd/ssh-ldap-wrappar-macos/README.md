# ssh-ldap-wrappar-macos
AuthorizedKeysCommand script for sshd on macOS and other helper tools.

You can store ssh-user's ssh public key in your OpenLDAP DB.
Bind your macOS computers to your OpenLDAP Directory Service. 
Then add sshd_config as following two lines and restart sshd on macOS computer.

    AuthorizedKeysCommand /usr/local/bin/ssh-ldap-wrappar-macos
    AuthorizedKeysCommandUser _sshd

Install two scripts 'ssh-ldap-wrappar-macos' and 'mkhome' under '/usr/local/bin'.

Edit sudoers file with visudo. Add a line as following.

    _sshd ALL=(ALL) NOPASSWD: /usr/local/bin/mkhome
    
----
## Search & Mappings
Almost of OpenLDAP user attribute has user home directory pointing to /home. But macOS used to have under /Users.
So you have to map `dsAttrTypeStandard:NFSHomeDirectory` to `#/Users/$uid$`.
