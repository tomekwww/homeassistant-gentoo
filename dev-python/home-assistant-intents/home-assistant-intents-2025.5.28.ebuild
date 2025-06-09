# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Intents for Home Assistant"
HOMEPAGE="https://pypi.org/project/home-assistant-intents/"
SRC_URI="https://files.pythonhosted.org/packages/f4/53/a5a33db90ea8e56ffe79220ebf933c36610bbc38ade9767fe2ce5b03299f/home_assistant_intents-2025.5.28.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/home_assistant_intents-2025.5.28"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
