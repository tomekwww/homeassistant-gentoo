# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper around mullvad api"
HOMEPAGE="https://pypi.org/project/mullvad-api/"
SRC_URI="https://files.pythonhosted.org/packages/a7/9f/1fa499bd5bb72aa82bcc4681c37ce60d1ebc9b039393a1612d18af00e8f3/mullvad_api-1.0.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/mullvad_api-1.0.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
