# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Get your energy consumption from Atome Linky device"
HOMEPAGE="http://github.com/baqs/pyAtome/"
SRC_URI="https://files.pythonhosted.org/packages/62/39/97cb54bf9757d99f22b63c23096aeb42cc9ca3e0480a6091b9215289e96f/pyAtome-0.1.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
