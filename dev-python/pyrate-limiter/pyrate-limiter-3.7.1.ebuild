# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python RateLimiter using LeakyBucket Algorithm"
HOMEPAGE="https://github.com/vutran1710/PyrateLimiter"
SRC_URI="https://files.pythonhosted.org/packages/52/2c/d823960cc8b80501f86bd34b001a1f699aa187742919180676e2d646cb7b/pyrate_limiter-3.7.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyrate_limiter-3.7.1"

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
