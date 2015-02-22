# logcheck-rules
Collection of logcheck-rules that proved useful on systems I manage in order to avoid unnecessary email alerts.

Feel free to use my rules as you like, but be careful: Those rules were designed for my use and might be unfit or even dangerous for you. For example I filte
r some failed login attempts, as they're being dealed with by fail2ban or useless (e.g. because you cannot login by ssh/password); without such additional me
asures you might leave your system vulnerable to attacks.

Rules are sorted by daemon and (sometimes) originating distrubution, submodule or whatever seemed apropriate in a specific case.

Some rules are derived from standard rule bundled with logcheck package and expanded for newer versions of software, added features etc. Others are created from scratch for the same usecase. Anyways, these rules are designed to be used alongside the logcheck-bundled rules and don't intend to be a complete standalone rulest.

Additions and corrections are welcome. I was frustrated I couldn't find a database for up-to-date logcheck rules, so I looked for a useful way to manage my rules across several systems. If it helps other people, even better.

