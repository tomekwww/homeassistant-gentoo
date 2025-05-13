# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Hyperion Ambient Lighting Python Package"
HOMEPAGE="https://github.com/dermotduffy/hyperion-py"
SRC_URI="https://files.pythonhosted.org/packages/f6/fb/f18c82436ce004d6bb54670f6ebd5e13641ea85c2600cfcda68f5cd345a3/hyperion-py-0.7.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
