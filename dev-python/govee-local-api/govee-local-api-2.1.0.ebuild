# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to communicate with Govee local API"
HOMEPAGE="https://pypi.org/project/govee-local-api/"
SRC_URI="https://files.pythonhosted.org/packages/f0/94/a94264c91d18debbfb594d9c2e9fce6c9d952e9a431cb2064d91efda1f51/govee_local_api-2.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/govee_local_api-2.1.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
