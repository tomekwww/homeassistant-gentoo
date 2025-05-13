# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="AlarmDecoder extended"
HOMEPAGE="https://github.com/ajschmidt8/adext"
SRC_URI="https://files.pythonhosted.org/packages/70/83/8d647128d3fced010b482c4f22431d4f0b43a198ab8282c2209386c8c915/adext-0.4.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	~dev-python/alarmdecoder-1.13.12[${PYTHON_USEDEP}]
"
