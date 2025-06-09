# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for Lutron RadioRA 2"
HOMEPAGE="http://github.com/thecynic/pylutron"
SRC_URI="https://files.pythonhosted.org/packages/98/3a/60968194e7f1b4a3bd6e7537446684ac50793ae6144c8009ca8a08173c03/pylutron-0.2.18.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pylutron-0.2.18"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
