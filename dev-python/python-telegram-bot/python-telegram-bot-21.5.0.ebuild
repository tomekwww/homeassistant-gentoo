# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="We have made you a wrapper you cant refuse"
HOMEPAGE="https://pypi.org/project/python-telegram-bot/"
SRC_URI="https://files.pythonhosted.org/packages/95/7e/b23ca1d8a712085a56132c274fbfe04d5b847a029af1966114c8b7117415/python_telegram_bot-21.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_telegram_bot-21.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/httpx-1.27.0[${PYTHON_USEDEP}]
	dev-python/httpx[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
