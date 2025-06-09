# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="gTTS Google TexttoSpeech a Python library and CLI tool to interface with Google Translate texttospeech API"
HOMEPAGE="https://pypi.org/project/gTTS/"
SRC_URI="https://files.pythonhosted.org/packages/65/10/808aff49b155a10ba035ffabc79bfa4d907161c9206de65e2cee4d0879fa/gtts-2.5.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/gtts-2.5.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.27.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/click-7.1.0[${PYTHON_USEDEP}]
	<dev-python/click-8.2.0[${PYTHON_USEDEP}]
"
