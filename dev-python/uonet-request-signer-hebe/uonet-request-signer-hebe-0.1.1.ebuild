# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="UONET hebe request signer for Python"
HOMEPAGE="https://github.com/wulkanowy/uonet-request-signer"
SRC_URI="https://files.pythonhosted.org/packages/31/43/52a680a72330f049e4bc5f649c505b6f76d650cc41edfd53c990eea8cfa8/uonet-request-signer-hebe-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/uonet-request-signer-hebe-0.1.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyopenssl[${PYTHON_USEDEP}]
"
