# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Interface for librespotjava"
HOMEPAGE="http://github.com/uvjustin/pylibrespot-java/"
SRC_URI="https://files.pythonhosted.org/packages/e8/61/9e0f6b6c7318d91d1fd9ba214d5026227808440f4c45d38ee042337392aa/pylibrespot-java-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pylibrespot-java-0.1.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
