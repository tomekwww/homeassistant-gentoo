# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for testing internet speed on Fastcom"
HOMEPAGE="https://github.com/nkgilley/fast.com"
SRC_URI="https://files.pythonhosted.org/packages/5e/2e/249bcb7b928abbd3410eae10cbe1cb67101f13b56f6c513b8c3ca523d99a/fastdotcom-0.0.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
