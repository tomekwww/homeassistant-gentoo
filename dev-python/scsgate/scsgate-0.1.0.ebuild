# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python module to interact with SCSGate"
HOMEPAGE="https://github.com/flavio/scsgate"
SRC_URI="https://files.pythonhosted.org/packages/55/c9/05c8eaae6ca0145bf0462e2716ca63834702c0390660bc42b38c0a4fdc17/scsgate-0.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/scsgate-0.1.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
