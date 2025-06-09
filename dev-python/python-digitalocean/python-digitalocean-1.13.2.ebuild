# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="digitaloceancom API to manage Droplets and Images"
HOMEPAGE="https://github.com/koalalorenzo/python-digitalocean"
SRC_URI="https://files.pythonhosted.org/packages/65/06/29d76ad40d98b2f6f72beb2f5b46e48ea631240a28b3c68e9e1e11f48e51/python-digitalocean-1.13.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python-digitalocean-1.13.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
