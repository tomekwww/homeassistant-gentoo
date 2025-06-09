# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library that returns a list of devices currently connected to a BT Home Hub 5"
HOMEPAGE="https://github.com/ahobsonsayers/bthomehub5-devicelist"
SRC_URI="https://files.pythonhosted.org/packages/eb/97/e67419b7653bd23a99b7c3255f3617496c6636d9f7032e72be4b4823b21f/bthomehub5-devicelist-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bthomehub5-devicelist-0.1.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	~dev-python/html-table-parser-python3-0.1.5[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"
