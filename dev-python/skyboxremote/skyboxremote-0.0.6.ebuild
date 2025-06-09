# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=flit
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library for controlling a sky box"
HOMEPAGE="https://pypi.org/project/skyboxremote/"
SRC_URI="https://files.pythonhosted.org/packages/df/9b/1c60a3af62108abcac675b486ca16cd2eb41aee2a765d0707c1cc8091392/skyboxremote-0.0.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/skyboxremote-0.0.6"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
