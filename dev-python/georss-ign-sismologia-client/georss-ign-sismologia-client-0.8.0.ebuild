# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A GeoRSS client library for the IGN Sismologia feed"
HOMEPAGE="https://github.com/exxamalte/python-georss-ign-sismologia-client"
SRC_URI="https://files.pythonhosted.org/packages/fa/7f/60d6196c671ff57c27e5cf836dbdd5989b0107ec8f2b1bc8228e29617f4f/georss_ign_sismologia_client-0.8.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/georss-client-0.17.0[${PYTHON_USEDEP}]
	>=dev-python/dateparser-1.2.0[${PYTHON_USEDEP}]
"
