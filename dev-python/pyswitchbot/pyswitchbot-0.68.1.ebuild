# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to communicate with Switchbot"
HOMEPAGE="https://github.com/sblibs/pySwitchbot/"
SRC_URI="https://files.pythonhosted.org/packages/65/67/76b791246bc13cd5b8c387202f087effe8086e37ac19bc60abb2a5442c58/pyswitchbot-0.68.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyswitchbot-0.68.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.5[${PYTHON_USEDEP}]
	>=dev-python/bleak-0.19.0[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-3.4.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-39.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyopenssl-23.0.0[${PYTHON_USEDEP}]
"

src_prepare() {
    echo -ne '\n[build-system]\nrequires = ["setuptools"]\nbuild-backend = "setuptools.build_meta"\n' >> pyproject.toml || die
    distutils-r1_src_prepare
}

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
