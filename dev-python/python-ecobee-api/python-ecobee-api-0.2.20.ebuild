# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for talking to Ecobee thermostats"
HOMEPAGE="https://github.com/nkgilley/python-ecobee-api"
SRC_URI="https://files.pythonhosted.org/packages/1d/91/b8268be82a436416831dac80980a0ba88e270fb2419f5392880c5ccf3c82/python_ecobee_api-0.2.20.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_ecobee_api-0.2.20"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.25.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
