# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An asynciobased RTSP library"
HOMEPAGE="https://github.com/marss/aiortsp"
SRC_URI="https://files.pythonhosted.org/packages/a5/d6/69fc1d338619b87fe79b0c26e5a3b4dd6766725a483e62467db3daf3f461/aiortsp-1.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiortsp-1.4.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/dpkt-2.9.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
