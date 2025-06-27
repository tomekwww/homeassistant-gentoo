# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper around nextcloud monitor api"
HOMEPAGE="https://pypi.org/project/nextcloudmonitor/"
SRC_URI="https://files.pythonhosted.org/packages/4a/39/b2350b17ea91fb790f3c2b8b629b50b574c8b50b4e88bb0602c4c5a7bc57/nextcloudmonitor-1.5.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/nextcloudmonitor-1.5.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
