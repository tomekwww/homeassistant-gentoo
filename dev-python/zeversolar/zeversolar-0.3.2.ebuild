# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/zeversolar/"
SRC_URI="https://files.pythonhosted.org/packages/3a/0d/bc534407e5e24d12a22d1880bf35c5bb7cbe1b1043915f091190fd090acd/zeversolar-0.3.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/zeversolar-0.3.2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.27.1[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	<dev-python/retry2-0.10.0[${PYTHON_USEDEP}]
	>=dev-python/retry2-0.9.5[${PYTHON_USEDEP}]
"
