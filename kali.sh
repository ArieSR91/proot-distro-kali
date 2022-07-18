# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want customize installation, please make a copy.
DISTRO_NAME="Kali (Rolling)"
DISTRO_COMMENT="Only for Aarch64 hosts."

TARBALL_URL['aarch64']="https://github.com/ArieSR91/proot-distro-kali/releases/download/kali-linux/kali.tar.xz"
TARBALL_SHA256['aarch64']="a7fa00a8211b5e95a7c9355c16a8a4822473c3cf86630082caea682b991202bc"

distro_setup() {
	# Don't update gvfs-daemons and udisks2
	run_proot_cmd apt-mark hold gvfs-daemons udisks2
}
