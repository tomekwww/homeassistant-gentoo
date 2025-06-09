# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Easy access of environment variables from Python with support for strings booleans list tuples and dicts"
HOMEPAGE="https://pypi.org/project/envs/"
SRC_URI="https://files.pythonhosted.org/packages/3c/7f/2098df91ff1499860935b4276ea0c27d3234170b03f803a8b9c97e42f0e9/envs-1.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/envs-1.4"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
