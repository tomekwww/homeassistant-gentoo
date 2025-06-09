# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="IamMeter api"
HOMEPAGE="https://github.com/lewei50/iammeter_pip_lib"
SRC_URI="https://files.pythonhosted.org/packages/e5/4c/f215ce1a341fc42a29543e8998a99ebed65f64118dc8d4680aa74e9e271b/iammeter-0.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/iammeter-0.2.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
