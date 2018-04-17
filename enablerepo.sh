#!/data/data/com.termux/files/usr/bin/sh
set -e
[ -z "${PREFIX}" ] && PREFIX=/data/data/com.termux/files/usr

if [ -z "${TMPDIR}" ]; then
    TMPDIR="${PREFIX}/tmp"
fi

if [ ! -e "${TMPDIR}" ]; then
    mkdir -p "${TMPDIR}"
fi

apt update
apt upgrade -y
apt install -y gnupg wget
wget -O "${TMPDIR}/pubkey.gpg" https://xeffyr.github.io/termux-x-repository/pubkey.gpg
apt-key add "${TMPDIR}/pubkey.gpg"
rm -f "${TMPDIR}/pubkey.gpg"

## Prevent duplicate entries in sources.list
sed -i '/https:\/\/xeffyr.github.io\/termux-x-repository/d' "${PREFIX}/etc/apt/sources.list"

ARCHITECTURE=$(uname -m)
if [ -z "${ARCHITECTURE}" ]; then
    echo "[!] Failed to determine your architecture."
    echo "    Using 'aarch64'. If this is wrong, please edit file"
    echo "    '\${PREFIX}/etc/apt/sources.list' to set a correct"
    echo "    architecture."
    ARCHITECTURE="aarch64"
fi

case ${ARCHITECTURE} in
    armv7*) ARCHITECTURE="arm";;
esac

echo "deb [arch=all,${ARCHITECTURE}] https://xeffyr.github.io/termux-x-repository/ termux x-gui" >> "${PREFIX}/etc/apt/sources.list"

apt update
