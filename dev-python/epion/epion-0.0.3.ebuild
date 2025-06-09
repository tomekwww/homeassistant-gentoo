# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python API wrapper for Epion Air senor data"
HOMEPAGE="https://github.com/devenzo-com/epion_python"
SRC_URI="https://files.pythonhosted.org/packages/bb/66/187fe93734d69efc68295f188352612578baa912fbd370b92d35800c49ec/epion-0.0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/epion-0.0.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
