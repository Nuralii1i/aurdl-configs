
# aurdl-configs

#### Introduction

This whole repository is for resolving AUR-fetching-problems in China.
Using a simple reversed proxy server for Github to get source code.

`aurdl.sh` is a simple script that can recognize source url which is contained in PKGBUILD file;

`makepkg.conf.bak` is original config file for ArchLinux;

`makepkg.conf` is my own config file for ArchLinux.

#### Usage

Find or build a reversed proxy for yourself first

Edit `aurdl.sh` to put your proxy url in that file

Put your `aurdl.sh` somewhere,like `/home/$USER`,rename it to what you like

Edit your `/etc/makepkg.conf` file to like this:

```
#-- The download utilities that makepkg should use to acquire sources
#  Format: 'protocol::agent'
DLAGENTS=('file::/usr/bin/curl -qgC - -o %o %u'
          'ftp::/usr/bin/curl -qgfC - --ftp-pasv --retry 3 --retry-delay 3 -o %o %u'
          'http::/usr/bin/curl -qgb "" -fLC - --retry 3 --retry-delay 3 -o %o %u'
          'https::/PATH/TO/YOUR_SCRIPT %o %u'  ------------------------------------------EDIT THIS LINE LIKE I DID!!
          'rsync::/usr/bin/rsync --no-motd -z %u %o'
          'scp::/usr/bin/scp -C %u %o')
```
