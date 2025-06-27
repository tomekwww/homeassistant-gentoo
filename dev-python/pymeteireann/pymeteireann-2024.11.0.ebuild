# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to communicate with the Met ireann Public Weather Forecast and Weather Warning APIs"
HOMEPAGE="https://github.com/DylanGore/PyMetEireann/"
SRC_URI="https://files.pythonhosted.org/packages/6f/1f/b936f66ef5ae238ea1d98202b0646f9bccb841c4e46824e368c5d3029156/pymeteireann-2024.11.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pymeteireann-2024.11.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/xmltodict[${PYTHON_USEDEP}]
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/async-timeout[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
