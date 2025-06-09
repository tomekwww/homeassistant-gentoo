# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Voice over IP Utilities"
HOMEPAGE="https://pypi.org/project/voip-utils/"
SRC_URI="https://files.pythonhosted.org/packages/98/83/8217d42a156ee7871492667bed5ad0d6dbc70a5ae703e48cd4f7cb498ca1/voip_utils-0.3.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/voip_utils-0.3.2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	~dev-python/opuslib-3.0.1[${PYTHON_USEDEP}]
"
