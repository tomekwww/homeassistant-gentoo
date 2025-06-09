# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="a library for controlling certain robot vacuums"
HOMEPAGE="https://github.com/mib1185/py-sucks"
SRC_URI="https://files.pythonhosted.org/packages/3c/ad/ca4ac217679b18a84f26de62e6f1e9f24819ced5bbed35e4a0420ad42af6/py-sucks-0.9.11.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/py-sucks-0.9.11"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/sleekxmppfs-1.4.1[${PYTHON_USEDEP}]
	>=dev-python/requests-2.18.0[${PYTHON_USEDEP}]
	>=dev-python/pycryptodome-3.4.0[${PYTHON_USEDEP}]
"
