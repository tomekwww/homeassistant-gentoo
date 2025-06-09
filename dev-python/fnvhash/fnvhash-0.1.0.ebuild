# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Pure Python FNV hash implementation"
HOMEPAGE="https://github.com/znerol/py-fnvhash"
SRC_URI="https://files.pythonhosted.org/packages/2f/01/14ef74ea03ac12e8a80d43bbad5356ae809b125cd2072766e459bcc7d388/fnvhash-0.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/fnvhash-0.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
