# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library to communitcate with Read Your Meter Pro httpsrymprocom"
HOMEPAGE="https://github.com/OnFreund/pyrympro"
SRC_URI="https://files.pythonhosted.org/packages/8f/c2/ac511683f86c9b805c85f0a6298facb792e02398082ccad96b6eec951d42/pyrympro-0.0.9.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyrympro-0.0.9"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
