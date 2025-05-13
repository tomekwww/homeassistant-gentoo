# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Fast kasa crypt"
HOMEPAGE="https://pypi.org/project/kasa-crypt/"
SRC_URI="https://files.pythonhosted.org/packages/50/ad/382eef9d4b8d6640fed006dc4d115e93d7ba4283fcfad2ad7c3e7d5d3804/kasa_crypt-0.6.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
