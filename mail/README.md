# Mail Service for macOS Mojave or later.

## Fetatures
- Use postfix which is built-in mac OS.
- Use dovecot which is installed via Homebrew.
- SMTP Auth with dovecot
- SMTP over ssl
- IMAP over ssl
- Use Let's Encrypt certificates automatically if they are installed.
- Both local directory users and Open Directory users are available.
- Migrate mail user directories of macOS Server 5.6.
- Simple mail service command, `mailc` will be installed into `/usr/local/sbin`

## Restrictions
- pop3 will not set up intentionlly.
- Active Directory users are not available.
- CalmAV and SpamAssasion is not included.

## How to setup
1. Install dovecot with Homebrew.
```
brew install dovecot --with-pigeonhole --with-pam
```
1. Clone this repo into `/usr/local/share` or where you like.
1. Move to `Services_on_macOS/mail/setup-scripts`
1. Type setup script.
```
./install-mail-service.
```
1. You can check configurtion files before starting service.
1. Start mail service.
```
sudo /usr/local/sbin/mailc start
```

## References
- [DovecotとSieveを使ったメールのサーバーサイドフィルタリング](https://www.infiniteloop.co.jp/blog/2015/07/email-filtering-by-sieve/)
- [openssl s_client で SMTP STARTTLS と SMTP AUTH を動作確認する](https://fsck.jp/?p=808)
