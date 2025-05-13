# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An extremely fast Python package and project manager written in Rust"
HOMEPAGE="https://pypi.org/project/uv/"
SRC_URI="https://files.pythonhosted.org/packages/27/e7/d3868a493e0d2f119dc7d0f24f98126bf629a486fb16274b532f4bdb8842/uv-0.7.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
