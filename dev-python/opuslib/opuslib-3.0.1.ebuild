# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python bindings to the libopus IETF lowdelay audio codec"
HOMEPAGE="https://github.com/onbeep/opuslib"
SRC_URI="https://files.pythonhosted.org/packages/46/55/826befabb29fd3902bad6d6d7308790894c7ad4d73f051728a0c53d37cd7/opuslib-3.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/opuslib-3.0.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
