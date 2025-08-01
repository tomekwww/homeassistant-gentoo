# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library and CLI tools for interacting with RFlink 433MHz transceiver"
HOMEPAGE="https://github.com/aequitas/python-rflink"
SRC_URI="https://files.pythonhosted.org/packages/bb/6e/488479f649d1ddb8c40f31edea5b0d7f1341ae427eda0a832950b4924a20/rflink-0.0.66.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/rflink-0.0.66"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/async-timeout[${PYTHON_USEDEP}]
	dev-python/docopt[${PYTHON_USEDEP}]
	dev-python/pyserial[${PYTHON_USEDEP}]
	dev-python/pyserial-asyncio[${PYTHON_USEDEP}]
"

src_prepare() {
	sed -e "s;version=version_from_git();version='${PV}';" -i setup.py
	distutils-r1_src_prepare
}


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
