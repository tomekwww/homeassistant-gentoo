# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A simple library to convert rtf to text"
HOMEPAGE="https://pypi.org/project/striprtf/"
SRC_URI="https://files.pythonhosted.org/packages/f3/86/7154b7c625a3ff704581dab70c05389e1de90233b7a751f79f712c2ca0e9/striprtf-0.0.29.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/striprtf-0.0.29"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
