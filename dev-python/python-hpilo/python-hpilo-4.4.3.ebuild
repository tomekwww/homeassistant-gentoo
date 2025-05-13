# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="iLO automation from python or shell"
HOMEPAGE="http://github.com/seveas/python-hpilo"
SRC_URI="https://files.pythonhosted.org/packages/dc/57/d9528a4636a71947890c96d57440db107331bbb125d40453ca1be1095d42/python-hpilo-4.4.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
