# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="SSH2 protocol library"
HOMEPAGE="https://paramiko.org"
SRC_URI="https://files.pythonhosted.org/packages/1b/0f/c00296e36ff7485935b83d466c4f2cf5934b84b0ad14e81796e1d9d3609b/paramiko-3.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/paramiko-3.5.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bcrypt-3.2.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-3.3.0[${PYTHON_USEDEP}]
	>=dev-python/pynacl-1.5.0[${PYTHON_USEDEP}]
"
