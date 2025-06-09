# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Controlling Energenie Power Strips with python"
HOMEPAGE="https://pypi.org/project/pyEGPS/"
SRC_URI="https://files.pythonhosted.org/packages/55/06/2173573103acfeab15b5dc396fb4622551a9b4094aecb768528fd6854c03/pyEGPS-0.2.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyEGPS-0.2.5"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyusb[${PYTHON_USEDEP}]
"
