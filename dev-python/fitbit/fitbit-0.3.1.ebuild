# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Fitbit API Wrapper"
HOMEPAGE="https://github.com/orcasgit/python-fitbit"
SRC_URI="https://files.pythonhosted.org/packages/05/46/47fb03b722f335c30b0d2734537c6932afdc465e22c5045008bfa2c122b1/fitbit-0.3.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
