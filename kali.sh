# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want customize installation, please make a copy.
DISTRO_NAME="Kali (Rolling)"

TARBALL_URL['aarch64']="https://github.com/ArieSR91/install-debian/releases/download/kali-linux/kali.tar.xz"
TARBALL_SHA256['aarch64']="162ec58dd3cfd4e8924ad64e9d9fa4ee0b4ea7ddcfb62a0f6c542c6e6079b0fd"

distro_setup() {
	# Don't update gvfs-daemons and udisks2
	run_proot_cmd apt-mark hold gvfs-daemons udisks2 && chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo
}
