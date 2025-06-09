# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A faster version of dbusnext"
HOMEPAGE="https://pypi.org/project/dbus-fast/"
SRC_URI="https://files.pythonhosted.org/packages/c2/a1/9693ec018feed2a7d3420eac6c807eabc6eb84227913104123c0d2ea5737/dbus_fast-2.44.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/dbus_fast-2.44.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
