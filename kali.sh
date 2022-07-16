# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want customize installation, please make a copy.
DISTRO_NAME="Kali (Rolling)"

TARBALL_URL['aarch64']="https://github.com/ArieSR91/install-debian/releases/download/kali-linux/kali.tar.xz"
TARBALL_SHA256['aarch64']="cb35fe85c40329cf89c5333ec2b212e28532a6711f77d006ff6fcb1c7aca62ca"

distro_setup() {
	# Don't update gvfs-daemons and udisks2
	run_proot_cmd apt-mark hold gvfs-daemons udisks2 && chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo
}
