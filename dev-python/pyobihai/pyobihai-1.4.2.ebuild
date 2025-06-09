# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper for Obihai"
HOMEPAGE="https://github.com/ejpenney/pyobihai"
SRC_URI="https://files.pythonhosted.org/packages/f0/cc/ac3f163f748ddc0c2d9191ef4955786537ebd802ced1c72466962d3cf862/pyobihai-1.4.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyobihai-1.4.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/defusedxml[${PYTHON_USEDEP}]
"
