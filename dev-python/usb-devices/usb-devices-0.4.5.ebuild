# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Tools for mapping describing and resetting USB devices"
HOMEPAGE="https://github.com/bluetooth-devices/usb-devices"
SRC_URI="https://files.pythonhosted.org/packages/25/48/dbe6c4c559950ebebd413e8c40a8a60bfd47ddd79cb61b598a5987e03aad/usb_devices-0.4.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/usb_devices-0.4.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
