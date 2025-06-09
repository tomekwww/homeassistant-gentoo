# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A GeoRSS client library for the Queensland Bushfire Alert feed"
HOMEPAGE="https://github.com/exxamalte/python-georss-qld-bushfire-alert-client"
SRC_URI="https://files.pythonhosted.org/packages/eb/f9/bd2e94a079021feeba6781cb89dc710630bd6f7929e4695f936220a64a3e/georss_qld_bushfire_alert_client-0.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/georss_qld_bushfire_alert_client-0.8"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/georss-client-0.17.0[${PYTHON_USEDEP}]
"
