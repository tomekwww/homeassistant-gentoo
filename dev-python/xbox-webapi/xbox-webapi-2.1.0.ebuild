# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to authenticate with Windows LiveXbox Live and use their API"
HOMEPAGE="https://pypi.org/project/xbox-webapi/"
SRC_URI="https://files.pythonhosted.org/packages/f5/5a/7af2bdd9725ebf905adb89fdcc78bfaae2e16ea7637db294febbbea443f6/xbox-webapi-2.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/xbox-webapi-2.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/appdirs[${PYTHON_USEDEP}]
	dev-python/ecdsa[${PYTHON_USEDEP}]
	dev-python/httpx[${PYTHON_USEDEP}]
	dev-python/ms-cv[${PYTHON_USEDEP}]
	<dev-python/pydantic-3.0.0[${PYTHON_USEDEP}]
"
