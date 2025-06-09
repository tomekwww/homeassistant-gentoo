# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Unofficial Python library to interface with Prosegur Alarmes PTES"
HOMEPAGE="https://github.com/dgomes/pyprosegur"
SRC_URI="https://files.pythonhosted.org/packages/ed/70/4890790705d685d8a8cf2eeb5f01e71ab45e90512eb8e5cae4393eb3f291/pyprosegur-0.0.14.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyprosegur-0.0.14"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
