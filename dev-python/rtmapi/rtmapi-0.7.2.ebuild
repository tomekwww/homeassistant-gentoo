# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API package for rememberthemilkcom"
HOMEPAGE="https://bitbucket.org/rtmapi/rtmapi"
SRC_URI="https://files.pythonhosted.org/packages/9d/f5/0faa3429619c46cc92b8d81eaa481c691de93b24bdd6447d41419cc69ba8/RtmAPI-0.7.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/RtmAPI-0.7.2"

LICENSE="BSD"
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
