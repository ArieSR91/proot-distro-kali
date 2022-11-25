# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want customize installation, please make a copy.
DISTRO_NAME="Kali (Rolling)"
DISTRO_COMMENT="Only for arm devices (32 & 64)."

TARBALL_URL['aarch64']="https://github.com/ArieSR91/proot-distro-kali/releases/download/kali-linux/kali-arm64.tar.xz"
TARBALL_SHA256['aarch64']="89cf6de9c0e93cbdd08782a9241df7fac01dc47ff39681866a63b093dca1900d"
TARBALL_URL['arm']=""
TARBALL_SHA256['arm']="8348d1bab05e8672a1df58529dd0070beafaaa133bdfa7a3e25251a9c4d8d2d2"

distro_setup() {
	# Don't update udisks2
	run_proot_cmd apt-mark hold udisks2
}
