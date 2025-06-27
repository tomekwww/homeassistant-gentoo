# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Bringing the elegance of C EventHandler to Python"
HOMEPAGE="http://github.com/pyeve/events"
SRC_URI="https://files.pythonhosted.org/packages/f6/2b/b92ae30db60cb3c2043da3b72abf30158c92cc77922280b45e9edf36bbf8/Events-0.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/Events-0.4"

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
