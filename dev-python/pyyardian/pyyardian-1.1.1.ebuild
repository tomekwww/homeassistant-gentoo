# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A module for interacting with the Yardian irrigation controller"
HOMEPAGE="https://github.com/h3l1o5/pyyardian"
SRC_URI="https://files.pythonhosted.org/packages/ae/fd/f4247323b4e57f543e239c1f3e194f42148403773e78785f020598fe24eb/pyyardian-1.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyyardian-1.1.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
