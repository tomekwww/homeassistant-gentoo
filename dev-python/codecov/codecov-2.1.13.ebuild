# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Hosted coverage reports for GitHub Bitbucket and Gitlab"
HOMEPAGE="https://github.com/codecov/codecov-python"
SRC_URI="https://files.pythonhosted.org/packages/2c/bb/594b26d2c85616be6195a64289c578662678afa4910cef2d3ce8417cf73e/codecov-2.1.13.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/codecov-2.1.13"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.7.9[${PYTHON_USEDEP}]
	dev-python/coverage[${PYTHON_USEDEP}]
"
