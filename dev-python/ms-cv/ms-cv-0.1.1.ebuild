# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A correlation vector implementation in python"
HOMEPAGE="https://github.com/OpenXbox/ms_cv"
SRC_URI="https://files.pythonhosted.org/packages/1c/e0/581b746c4b26aa0fac038fc300c6ec8b70c2a2837860bb08c4307cba9673/ms_cv-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ms_cv-0.1.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
