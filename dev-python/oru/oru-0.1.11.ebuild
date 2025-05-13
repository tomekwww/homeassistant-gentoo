# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client for Orange and Rockland Utility smart energy meters"
HOMEPAGE="https://github.com/bvlaicu/oru/"
SRC_URI="https://files.pythonhosted.org/packages/09/b4/f0613d428ec6311e2efdfaa5c28f6938172ad5fb8b04e4cd9283b8029317/oru-0.1.11.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
