# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API to interact with a Dormakaba dkey lock via bluetooth"
HOMEPAGE="https://pypi.org/project/py-dormakaba-dkey/"
SRC_URI="https://files.pythonhosted.org/packages/b9/2d/92b83af2ed82c0cc1f86796b371bf0121d045e3eaaecdbb74ada163f2977/py-dormakaba-dkey-1.0.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/py-dormakaba-dkey-1.0.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
