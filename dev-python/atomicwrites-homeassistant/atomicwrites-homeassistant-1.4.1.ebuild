# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Atomic file writes"
HOMEPAGE="https://github.com/untitaker/python-atomicwrites"
SRC_URI="https://files.pythonhosted.org/packages/9a/5a/10ff0fd9aa04f78a0b31bb617c8d29796a12bea33f1e48aa54687d635e44/atomicwrites-homeassistant-1.4.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/atomicwrites-homeassistant-1.4.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
