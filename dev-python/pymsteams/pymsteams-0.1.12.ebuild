# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Format messages and post to Microsoft Teams"
HOMEPAGE="https://github.com/rveachkc/pymsteams"
SRC_URI="https://files.pythonhosted.org/packages/24/0a/73f5598bd047022d2f7557d90c9404c1164ecb24fe0ea289a5c6ef1bb784/pymsteams-0.1.12.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pymsteams-0.1.12"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
