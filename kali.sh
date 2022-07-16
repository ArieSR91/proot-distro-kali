# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want customize installation, please make a copy.
DISTRO_NAME="Kali (Rolling)"

TARBALL_URL['aarch64']="https://github.com/ArieSR91/install-debian/releases/download/kali-linux/kali.tar.xz"
TARBALL_SHA256['aarch64']="5d1ed914c430054bebe2f4c683c220493470afd44bcfd0300c6202b6dd4eebe1"

distro_setup() {
	# Don't update gvfs-daemons and udisks2
	run_proot_cmd apt-mark hold gvfs-daemons udisks2
}
