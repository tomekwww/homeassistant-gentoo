# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for interacting with Join by joaoapps"
HOMEPAGE="https://github.com/nkgilley/python-join-api"
SRC_URI="https://files.pythonhosted.org/packages/27/72/fbbfcc9ab2db79b86cf7e3af4269478a80cb8aedee27f4f60393e7a90e52/python-join-api-0.0.9.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python-join-api-0.0.9"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/flask-1.1.2[${PYTHON_USEDEP}]
"
