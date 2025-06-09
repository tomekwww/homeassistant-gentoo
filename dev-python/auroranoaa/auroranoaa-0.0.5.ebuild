# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="NOAA Aurora Wrapper for Home Assistant Integration"
HOMEPAGE="https://github.com/djtimca/aurora-api"
SRC_URI="https://files.pythonhosted.org/packages/4b/09/a194c09651e2b6423adc781477268bb0b7b328c79881355ce29c7761c39a/auroranoaa-0.0.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/auroranoaa-0.0.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
