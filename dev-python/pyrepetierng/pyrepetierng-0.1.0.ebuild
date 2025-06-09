# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A updated python RepetierServer library based on Mtrabs library"
HOMEPAGE="https://github.com/ShadowBr0ther/pyrepetier-ng"
SRC_URI="https://files.pythonhosted.org/packages/ec/ca/2948fcbc159a889225fe2b5ddbc91dabc76fe402a29430907b13853bad97/pyrepetierng-0.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyrepetierng-0.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
