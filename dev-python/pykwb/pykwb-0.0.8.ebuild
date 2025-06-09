# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="KWB Easyfire serial library for inclusion into homeassistant"
HOMEPAGE="https://github.com/bimbar/pykwb.git"
SRC_URI="https://files.pythonhosted.org/packages/1a/60/64f21d560b91aa81d310a755ef9c48ca26e27aa03f7f9ddeb4d2f0c7d088/pykwb-0.0.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pykwb-0.0.8"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
