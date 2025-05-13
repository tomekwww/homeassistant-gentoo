# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for controlling Broadlink devices"
HOMEPAGE="http://github.com/mjg59/python-broadlink"
SRC_URI="https://files.pythonhosted.org/packages/d7/5b/d4aee8c176a99b3f20acaeeb4e36761c2c4a688de79a6bf7c889bd9df2ec/broadlink-0.19.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cryptography-3.2.0[${PYTHON_USEDEP}]
"
