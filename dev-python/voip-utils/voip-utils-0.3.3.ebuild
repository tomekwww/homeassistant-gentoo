# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Voice over IP Utilities"
HOMEPAGE="https://pypi.org/project/voip-utils/"
SRC_URI="https://files.pythonhosted.org/packages/83/d9/3a9f2c9fd55397a98bdd992f44d6e8f2d3d42ffa261d8215dade05f81b2a/voip_utils-0.3.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/voip_utils-0.3.3"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	~dev-python/opuslib-3.0.1[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
