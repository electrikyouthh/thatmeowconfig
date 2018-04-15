apt-get update && apt-get full-upgrade
apt-get install autoconf automake bash-completion bc binutils-dev bison <br>
<br>
apt-get install bzip2 clang cmake coreutils ctags curl dialog diffutils dos2unix <br>
<br>
apt-get install expect ffmpeg findutils gawk git gnutls golang grep gzip <br>
<br>
apt-get install imagemagick jq less lynx m4 make man nano nodejs <br>
apt-get install openssh patch php-dev python readline-dev rlwrap rsync ruby-dev <br>
apt-get install sed sensible-utils sharutils sqlite tar texinfo tree unzip vim <br>
apt-get install w3m wget zip
apt-get install sed sensible-utils sharutils sqlite tar texinfo tree unzip vim 
apt-get install openssh patch php-dev python readline-dev rlwrap rsync ruby-dev 
apt-get install imagemagick jq less lynx m4 make man nano nodejs 
apt-get install expect ffmpeg findutils gawk git gnutls golang grep gzip 
apt-get install bzip2 clang cmake coreutils ctags curl dialog diffutils dos2unix <br>
apt-get install bzip2 clang cmake coreutils ctags curl dialog diffutils dos2unix
apt-get install autoconf automake bash-completion bc binutils-dev bison
apt-get install git tig htop 
git init
git config --global user.email "electrikyouthx@hotmail.com"
git config --global user.name "electrikyouthh"
git config --help
#!/bin/bash
# 
# script that passes password from stdin to ssh. 
# 
# Copyright (C) 2010 André Frimberger <andre OBVIOUS_SIGN frimberger.de>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or 
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# URL: http://andre.frimberger.de/index.php/linux/reading-ssh-password-from-stdin-the-openssh-5-6p1-compatible-way/
#
 
if [ -n "$SSH_ASKPASS_TMPFILE" ]; then     cat “$SSH_ASKPASS_TMPFILE”;     exit 0; elif [ $# -lt 1 ]; then     echo “Usage: echo password | $0 <ssh command line options>” >&2;     exit 1; fi
