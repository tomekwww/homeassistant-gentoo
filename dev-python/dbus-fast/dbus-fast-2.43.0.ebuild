# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A faster version of dbusnext"
HOMEPAGE="https://pypi.org/project/dbus-fast/"
SRC_URI="https://files.pythonhosted.org/packages/16/42/b37c77b67f1c7aec0c30c75fe69ae94df4e592522c0b9bc206e2b183c4b6/dbus_fast-2.43.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
