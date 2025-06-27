# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Module to interact with Cisco Mobility Express APIs to fetch connected devices"
HOMEPAGE="https://github.com/fbradyirl/ciscomobilityexpress"
SRC_URI="https://files.pythonhosted.org/packages/87/8b/f915f66743435d0e9c8d14b94ff7c4be29531ed7a885ab7f9b5c7c1dc748/ciscomobilityexpress-0.3.9.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ciscomobilityexpress-0.3.9"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.21.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
