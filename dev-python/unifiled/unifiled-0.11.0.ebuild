# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Easily connect to Ubiquiti Unifi led devices"
HOMEPAGE="https://github.com/florisvdk/unifiled"
SRC_URI="https://files.pythonhosted.org/packages/20/b9/7972dc1c156272e2e39a0eee42b08b6a45fdddf5313167fa08b7a48d353a/unifiled-0.11.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/unifiled-0.11"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
