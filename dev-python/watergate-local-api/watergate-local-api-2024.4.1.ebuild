# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python package to interact with the Watergate Local API"
HOMEPAGE="https://github.com/hero-laboratories/watergate-local-api-python"
SRC_URI="https://files.pythonhosted.org/packages/1b/74/751b43755279cd11f2297b4be02229abf38b551308a0a04fdc920a873715/watergate_local_api-2024.4.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/watergate_local_api-2024.4.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
