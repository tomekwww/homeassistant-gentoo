# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Reads temperature from TEMPerV1 devices USB 0c457401"
HOMEPAGE="https://github.com/padelt/temper-python"
SRC_URI="https://files.pythonhosted.org/packages/b8/5a/e59574f51ac496da89039f8585911e6b7ce37fb7d896bfd0188970e2e374/temperusb-1.6.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
