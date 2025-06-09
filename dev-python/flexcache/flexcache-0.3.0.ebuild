# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Saves and loads to the cache a transformed versions of a source object"
HOMEPAGE="https://pypi.org/project/flexcache/"
SRC_URI="https://files.pythonhosted.org/packages/55/b0/8a21e330561c65653d010ef112bf38f60890051d244ede197ddaa08e50c1/flexcache-0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/flexcache-0.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/typing-extensions[${PYTHON_USEDEP}]
"
