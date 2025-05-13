# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Create and transform ULIDs"
HOMEPAGE="https://pypi.org/project/ulid-transform/"
SRC_URI="https://files.pythonhosted.org/packages/d4/f2/16c8e6f3d82debedeb1b09bec889ad4a1ca8a71d2d269c156dd80d049c2e/ulid_transform-1.4.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
