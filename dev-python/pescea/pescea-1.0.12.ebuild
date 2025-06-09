# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python interface to the Escea fireplace controllers"
HOMEPAGE="https://github.com/lazdavila/pescea"
SRC_URI="https://files.pythonhosted.org/packages/a8/07/830fb1201b512e04aa23382303b33d9c555de45727e28ace14fdb2ab329e/pescea-1.0.12.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pescea-1.0.12"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
