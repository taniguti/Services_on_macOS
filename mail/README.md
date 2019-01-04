# Mail Service for macOS Mojave or later.

## Features
- Uses postfix which is built-in mac OS.
- Uses dovecot which is installed via [Homebrew](https://brew.sh).
- SMTP Auth with dovecot
- SMTP over ssl
- IMAP over ssl
- Uses Let's Encrypt certificates automatically if they are installed.
- Both local directory users and Open Directory users are available.
- Migrate mail user directories of macOS Server 5.6 while setting up.
- Simple mail service command, `mailc` will be installed (create a symlink) into `/usr/local/sbin`.

```
$ sudo /usr/local/sbin/mailc help

mailc - mail service control command

 mailc [start|stop|restart|status] [postfix|dovecot|all]
```

## Restrictions
- pop3 will not set up intentionlly.
- Active Directory users are not available.
- CalmAV and SpamAssasion is not included.
- Password method is only plain but expect to use it with SSL.
- No notification.

## How to setup
1. Install dovecot with [Homebrew](https://brew.sh).

    brew install dovecot --with-pigeonhole --with-pam

1. Clone this repo into `/usr/local/share` or where you like.
1. Move to `Services_on_macOS/mail/setup-scripts`
1. Type setup script. **It will take so long time to create a dhparam file.**

    ./install-mail-service.

1. You can check configurtion files before starting service. So mail service won't start automatically at that time.You can edit configuration files if there are anything you want to add.

    postconf -c /usr/local/etc/postfix
    doveconf -n

1. Start mail service.

    sudo /usr/local/sbin/mailc start


## Tested conditions
- macOS 10.13 with Server 5.6.
- macOS 10.4
- Mail.app of macOs 10.13, macOS 10.14 and iOS 12.

## Log rotation
You will find logrotate configuration file for dovecot in logrotate.d directory.
If you use logrotate on your server, put the file into /usr/local/etc/logrotate.d then restart logrotate.

## References
- [dovecot](https://www.dovecot.org/index.html)
- [dovecot wiki documatation](https://wiki2.dovecot.org)
- [DovecotとSieveを使ったメールのサーバーサイドフィルタリング](https://www.infiniteloop.co.jp/blog/2015/07/email-filtering-by-sieve/)
- [openssl s_client で SMTP STARTTLS と SMTP AUTH を動作確認する](https://fsck.jp/?p=808)
