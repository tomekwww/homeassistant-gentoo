# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python 3 wrapper for playing media via gstreamer"
HOMEPAGE="https://github.com/happyleavesaoc/gstreamer-player/"
SRC_URI="https://files.pythonhosted.org/packages/ac/57/17ab891edcf513d7254df70281ec14163f3154e2daf80e40a71f9bb28b73/gstreamer-player-1.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/gstreamer-player-1.1.2"

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
