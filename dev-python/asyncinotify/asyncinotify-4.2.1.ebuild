# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=flit
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A simple optionallyasync python inotify library focused on simplicity of use and operation and leveraging modern Python features"
HOMEPAGE="https://pypi.org/project/asyncinotify/"
SRC_URI="https://files.pythonhosted.org/packages/7b/9d/a973f823c0927bc4822392f949c561eee831109c004ce1cf639c6e4b61a4/asyncinotify-4.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/asyncinotify-4.2.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
