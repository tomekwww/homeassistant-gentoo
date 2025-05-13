# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Extra Pydantic types"
HOMEPAGE="https://pypi.org/project/pydantic-extra-types/"
SRC_URI="https://files.pythonhosted.org/packages/7e/ba/4178111ec4116c54e1dc7ecd2a1ff8f54256cdbd250e576882911e8f710a/pydantic_extra_types-2.10.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pydantic-2.5.2[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
"
