# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Communicate with VOC"
HOMEPAGE="https://github.com/molobrakos/volvooncall"
SRC_URI="https://files.pythonhosted.org/packages/9b/12/a6a0961cb964f2f52d0d5225f0a7977af745052a54affb069b4a6c8062e9/volvooncall-0.10.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/volvooncall-0.10.3"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
