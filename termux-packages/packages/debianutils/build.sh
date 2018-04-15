TERMUX_PKG_HOMEPAGE=https://packages.debian.org/debianutils
TERMUX_PKG_DESCRIPTION="Small utilities which are used primarily by the installation scripts of Debian packages"
TERMUX_PKG_VERSION=4.8.3
TERMUX_PKG_SRCURL=http://ftp.debian.org/debian/pool/main/d/debianutils/debianutils_${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=7102246d1c35260ed7f0458a9886acf655c379d14908415574494cdea45e28fb
TERMUX_PKG_RM_AFTER_INSTALL="bin/installkernel share/man/man8/installkernel.8"
