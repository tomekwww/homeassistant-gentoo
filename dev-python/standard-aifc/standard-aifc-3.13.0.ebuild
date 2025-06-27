# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Standard library aifc redistribution dead battery"
HOMEPAGE="https://pypi.org/project/standard-aifc/"
SRC_URI="https://files.pythonhosted.org/packages/c4/53/6050dc3dde1671eb3db592c13b55a8005e5040131f7509cef0215212cb84/standard_aifc-3.13.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/standard_aifc-3.13.0"

LICENSE="PSF-2"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/standard-chunk[${PYTHON_USEDEP}]
	dev-python/audioop-lts[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
