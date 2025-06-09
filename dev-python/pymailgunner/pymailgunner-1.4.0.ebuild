# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A simple mailgun client  pymailgun fork with Python 3 support"
HOMEPAGE="https://github.com/pschmitt/pymailgunner"
SRC_URI="https://files.pythonhosted.org/packages/87/3e/fc8ffcdd77b3b016849b0079e3b2f1e0be7837228d08592984d57cf17a66/pymailgunner-1.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pymailgunner-1.4"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
