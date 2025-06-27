# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Simple backoff algorithm in Python"
HOMEPAGE="https://github.com/admiralobvious/justbackoff"
SRC_URI="https://files.pythonhosted.org/packages/9c/67/d1a9a9b0035c6314e93d7ef381e0c01571b069400899a0f606b5b3b7751a/justbackoff-0.6.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/justbackoff-0.6.0"

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
