# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Get your water consumption data from your Suez account wwwtoutsurmoneaufr or wwweauolivetfr"
HOMEPAGE="https://pypi.org/project/pysuezV2/"
SRC_URI="https://files.pythonhosted.org/packages/9d/7a/4d34fadd0fb589c434aac9a3ef00d3b92cbdeda06ad55fc70d921575e517/pysuezv2-2.0.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
