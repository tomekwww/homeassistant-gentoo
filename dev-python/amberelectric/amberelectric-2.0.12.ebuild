# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Amber Electric Public API"
HOMEPAGE="https://github.com/madpilot/amberelectric.py"
SRC_URI="https://files.pythonhosted.org/packages/64/7f/1a99b7cb64588df60fd54509b7ab5b3ff8019833fb341d4dbf5f2fdf8c0a/amberelectric-2.0.12.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/amberelectric-2.0.12"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aenum-3.1.11[${PYTHON_USEDEP}]
	<dev-python/aenum-3.1.16[${PYTHON_USEDEP}]
	>=dev-python/pydantic-1.10.5[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.8.2[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.25.3[${PYTHON_USEDEP}]
"
