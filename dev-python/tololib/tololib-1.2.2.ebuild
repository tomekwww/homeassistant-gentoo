# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Library and Command Line Interface for Communicating with TOLO Steam Generators"
HOMEPAGE="https://gitlab.com/MatthiasLohr/tololib"
SRC_URI="https://files.pythonhosted.org/packages/2e/c7/07092c427d680a2fb0392ed27669f7a7b630c938f38531bd03d77fa1090f/tololib-1.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/tololib-1.2.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
