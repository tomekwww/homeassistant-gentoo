# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python package for interacting with Yeelight Sunflower bulbs"
HOMEPAGE="https://github.com/lindsaymarkward/python-yeelight-sunflower"
SRC_URI="https://files.pythonhosted.org/packages/32/27/5460a60572d2a78339f33bfc2752eee8a90b2b8e046770d19b2734c110bb/yeelightsunflower-0.0.10.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
