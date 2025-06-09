# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An HTTP client for controlling a Bryant Evolution HVAC system"
HOMEPAGE="https://pypi.org/project/evolutionhttp/"
SRC_URI="https://files.pythonhosted.org/packages/01/d1/312a51595eac711d9a07725c58bec381af693de0e4132ff74ae88207e8fc/evolutionhttp-0.0.18.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/evolutionhttp-0.0.18"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
